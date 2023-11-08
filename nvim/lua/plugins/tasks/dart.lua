local tasks = require("telescope").extensions.tasks

tasks.generators.custom.add(function(buf)
  local filename = vim.api.nvim_buf_get_name(buf)
  local extension = vim.fn.fnamemodify(filename, ":e")
  vim.notify("extension: " .. extension)

  if extension == "dart" then
    return {
      {
        "Pub Get",
        filename = filename,
        cwd = tasks.util.find_current_file_root({ ".git" }),
        cmd = ("flutter pub get"):format(
          vim.fn.fnamemodify(filename, ":t:r"),
          filename,
          vim.fn.fnamemodify(filename, ":t:r")
        ),
      },
      {
        "Pub Upgrade",
        filename = filename,
        cwd = tasks.util.find_current_file_root({ ".git" }),
        cmd = ("flutter pub get"):format(
          vim.fn.fnamemodify(filename, ":t:r"),
          filename,
          vim.fn.fnamemodify(filename, ":t:r")
        ),
      },
      {
        "Flutter Run Linux",
        filename = filename,
        cwd = tasks.util.find_current_file_root({ ".git" }),
        cmd = ("flutter run -d linux"):format(
          vim.fn.fnamemodify(filename, ":t:r"),
          filename,
          vim.fn.fnamemodify(filename, ":t:r")
        ),
      },
      {
        "Flutter Run Android",
        filename = filename,
        cwd = tasks.util.find_current_file_root({ ".git" }),
        cmd = ("flutter run -d android"):format(
          vim.fn.fnamemodify(filename, ":t:r"),
          filename,
          vim.fn.fnamemodify(filename, ":t:r")
        ),
      },
      {
        "Flutter Generate",
        filename = filename,
        cwd = tasks.util.find_current_file_root({ ".git" }),
        cmd = ("flutter pub run build_runner build"):format(
          vim.fn.fnamemodify(filename, ":t:r"),
          filename,
          vim.fn.fnamemodify(filename, ":t:r")
        ),
      },
      {
        "Flutter Generate (Delete Conflicting Outputs)",
        filename = filename,
        cwd = tasks.util.find_current_file_root({ ".git" }),
        cmd = ("flutter pub run build_runner build --delete-conflicting-outputs"):format(
          vim.fn.fnamemodify(filename, ":t:r"),
          filename,
          vim.fn.fnamemodify(filename, ":t:r")
        ),
      },
    }
  end

  return nil
end)

return {}
