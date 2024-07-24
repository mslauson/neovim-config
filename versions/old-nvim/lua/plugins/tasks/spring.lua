local tasks = require("telescope").extensions.tasks

local function containsSpringBootPlugin(pomPath)
  local contents = vim.fn.readfile(pomPath)
  for _, line in ipairs(contents) do
    if line:match("<artifactId>spring%-boot%-maven%-plugin</artifactId>") then
      return true
    end
  end
  return false
end

tasks.generators.custom.add(function(buf)
  local filename = vim.api.nvim_buf_get_name(buf)
  local extension = vim.fn.fnamemodify(filename, ":e")
  vim.notify("extension: " .. extension)

  if extension == "java" then
    -- Find the closest pom.xml related to the current Java file
    local pomPath = tasks.util.find_current_file_root({ "pom.xml" })

    if pomPath and containsSpringBootPlugin(pomPath .. "/pom.xml") then
      -- Normal run task
      local runTask = {
        "Run Spring Boot application",
        filename = filename,
        cwd = pomPath,
        cmd = ("mvn -f %s/pom.xml spring-boot:run"):format(pomPath),
      }

      -- Debug task
      local debugTask = {
        "Debug Spring Boot application",
        filename = filename,
        cwd = pomPath,
        cmd = ("mvn -f %s/pom.xml spring-boot:run -Dspring-boot.run.jvmArguments='-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=*:5005'"):format(
          pomPath
        ),
      }

      return { runTask, debugTask } -- Returning both tasks
    end
  end

  return nil
end)

return {}
