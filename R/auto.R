
#' Create a Github Action that Comments a Reminder on an Issue
#'
#' @param issue_number The Github Issue Number for the repo
#' @param remindee The person to be reminded
#' @param action What the person needs to be reminded about
#'
#' @export
#'
#' @examples
#'
#' \dontrun{
#' auto_issue_comment(issue_number = 1, remindee = "you", action = "keep making great #rstats packages!")
#' }

auto_issue_comment <- function(issue_number, remindee, action) {

  data <- list(issue_number = issue_number,
               remindee = remindee,
               action = action)

  template <- readLines(system.file("template_comment_reminder.yml", package = "autobots"))

  tmp <- tempdir()

  writeLines(whisker::whisker.render(template, data), paste0(tmp, "/auto_issue_comment.yml"))

  usethis::use_github_action(url = paste0(tmp, "/auto_issue_comment.yml"))

  on.exit(unlink(tmp))

}
