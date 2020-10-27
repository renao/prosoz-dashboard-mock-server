require 'sinatra'

def load_mock_file(file_path)
  File.read(file_path)
end

get '/' do
    'Mock Server für PROSOZ Dashboard: Läuft :-)'
end

get '/jira/rest/api/:id/project/:project/versions' do  |id, project|
  # statische Antwort.
  # Aktuell im PROSOZ Dashboard:
  # * :id => 2
  # * :project => BAUEN 
  load_mock_file 'mocks/jira/jira_version.json'
end

get '/jira/rest/greenhopper/1.0/rapidviews/list' do
  load_mock_file 'mocks/jira/jira_sprint_meta_info.json'
end

get '/jira/rest/greenhopper/1.0/sprintquery/:id' do |id|
  load_mock_file 'mocks/jira/sprint_query.json'
end

get '/jira/rest/agile/1.0/sprint/:sprint_id' do |sprint_id|
  load_mock_file 'mocks/jira/jira_sprint.json'
end

get '/gitlab/projects/:project_id/merge_requests' do |project|
  state = params[:state]
  wip = params[:wip]
  load_mock_file 'mocks/gitlab/gitlab_open_merge_requests_without_wip.json' if wip == 'no'
  load_mock_file 'mocks/gitlab/gitlab_open_merge_requests.json' if state == 'opened'
end

get '/gitlab/projects/:project_id/pipelines' do |project|
  branch = params[:ref] # not used yet.
  load_mock_file 'mocks/gitlab/gitlab_ci_status.json'
end