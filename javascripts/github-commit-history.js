(function($) {
  $.fn.GithubCommitHistory = function(opts) {
    var defaults = {
      username: "halfdan",
      repo: "github-commit-history",
      branch: "master",
      path: "",
      limit: 50,
      offset: 0,
      gravatar_size: 50
    };

    var options = $.extend(defaults, opts);

    return this.each(function() {

      var obj = $(this);

      var template;
      $.get('commit_template.html', function(data) {
        template = data;
      });

      api_url = "https://api.github.com/repos/" + options.username + "/" + options.repo + "/commits?sha=" + options.branch;
      if (options.path !== ""){
        api_url += "&path=" + options.path;
      }
      jQuery.getJSON(api_url, function(data) {
        $.each(data, function(idx, commit) {

          // Don't show the first "offset" entries.
          if(idx < options.offset) {
            return true;
          }

          // Break out of .each of we've reached our limit.
          if(idx == options.limit + options.offset) {
            return false;
          }

          commit = $.extend(commit, options);

          var html = Mustache.to_html(template, commit);
          obj.append(html);
        });
      });

    });
  };

})(jQuery);
