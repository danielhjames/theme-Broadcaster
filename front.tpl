{{ config_load file="{{ $gimme->language->english_name }}.tpl" }}

{{ include file="_tpl/_html-head.tpl" }}

{{ include file="_tpl/header.tpl" }}

  <div id="wrapper">

    <div id="content">

{{ include file="_tpl/front-playlist-articles.tpl" }}

      </div><!-- / Content -->

{{ include file="_tpl/footer.tpl" }}

    </div><!-- / Wrapper -->

{{ include file="_tpl/_html-foot.tpl" }}

</body>
</html>
