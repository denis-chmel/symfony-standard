<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
</head>
<body>
<div id="symfony-wrapper">
    <div id="symfony-header">
        <form id="symfony-search" method="GET" action="http://symfony.com/search">
            <label for="symfony-search-field"><span>Search on Symfony Website</span></label>
            <input name="q" id="symfony-search-field" type="search" placeholder="Search on Symfony website" class="medium_txt" />
            <input type="submit" class="symfony-button-grey" value="OK" />
        </form>
    </div>

    <div class="symfony-content" style="padding: 10px; border: 1px solid silver;">
        <? $view['slots']->output('_content') ?>
    </div>
</div>
</body>
</html>
