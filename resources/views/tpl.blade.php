<script type="text/javascript" src="{{ config('tinymce.cdn') }}"></script>
<script type="text/javascript">
    function elFinderBrowser (field_name, url, type, win) {
        tinymce.activeEditor.windowManager.open({
            file: '{{ route('elfinder.tinymce4') }}',
            title: 'Title',
            width: 900,
            height: 450,
            resizable: 'yes'
        }, {
            setUrl: function (url) {
                win.document.getElementById(field_name).value = url;
            }
        });
        return false;
    }

    tinymce.init({
        selector: ".tinymce",
        language: 'fr_FR',
        theme: "modern",
        skin: "lightgray",
        plugins: "advlist autolink link image lists charmap preview hr anchor pagebreak spellchecker searchreplace wordcount visualblocks visualchars code fullscreen media nonbreaking save table contextmenu directionality template paste textcolor",
        toolbar: "insertfile undo redo | styleselect bold italic forecolor | alignleft aligncenter alignright alignjustify bullist numlist | link image media fullpage",
        file_browser_callback: elFinderBrowser
    });
</script>