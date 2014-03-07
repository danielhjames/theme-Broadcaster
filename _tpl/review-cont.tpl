<article>
  <small>
    <a href="{{ url options='section' }}">{{ $gimme->section->name }}</a>
  </small>
  <dl>
    <dt class="artist_name label">Artist:</dt>
    <dd class="artist_name">{{ $gimme->article->artist }}</dd>
    <dt class="album_name label">Album:</dt>
    <dd class="album_name">{{ $gimme->article->release }}</dd>
    <dt class="album_info">Release year:</dt>
    <dd class="album_info">{{ $gimme->article->year }}</dd>
      <dt class="album_info">Label: {{ $gimme->article->topics->length }}</dt>
      <dd class="album_info">
      {{ list_article_topics }}
        {{ if $gimme->current_list->at_beginning }}
          <a href="{{ url options='template topic.tpl' }}">{{ $gimme->topic->name }}</a>
        {{ else }}
          , <a href="{{ url options='template topic.tpl' }}">{{ $gimme->topic->name }}</a>
        {{ /if }}
      {{ /list_article_topics }}
    </dd>
  </dl>
  <span class="date">{{ $gimme->article->publish_date|camp_date_format:"%d %M %Y" }} / {{ #by# }} {{ list_article_authors }}{{ if $gimme->author->user->defined }}<a href="{{ $view->url(['username' => $gimme->author->user->uname], 'user') }}">{{ /if }}{{ $gimme->author->name }}{{ if $gimme->author->user->defined }}</a>{{ /if }} ({{ $gimme->author->type|lower }}){{ if !$gimme->current_list->at_end }}, {{ /if }}{{ /list_article_authors }} {{ list_article_locations }}{{ if $gimme->current_list->at_beginning }}/ {{ /if }}{{ if $gimme->location->enabled }}{{ $gimme->location->name }}{{ if $gimme->current_list->at_end }}{{ else }}, {{ /if }}{{ /if }}{{ /list_article_locations }}</span>
  {{ if $gimme->article->content_accessible }}
    {{ include file="_tpl/_edit-article.tpl" }}{{ $gimme->article->full_text }}
  {{ else }}
    <p><em>{{ #thisArticleIsLocked# }}</em></p>
  {{ /if }}
  {{ include file="_tpl/review-social.tpl" }}
</article>
