<div id="yng_page_trace" style="position: fixed;bottom:0;right:0;font-size:14px;width:100%;z-index: 999999;color: #000;text-align:left;font-family:'微软雅黑';">
    <div id="yng_page_trace_tab" style="display: none;background:white;margin:0;height: 250px;">
        <div id="yng_page_trace_tab_tit" style="height:30px;padding: 6px 12px 0;border-bottom:1px solid #ececec;border-top:1px solid #ececec;font-size:16px">
            <?php foreach ($trace as $key => $value) {?>
            <span style="color:#000;padding-right:12px;height:30px;line-height:30px;display:inline-block;margin-right:3px;cursor:pointer;font-weight:700"><?php echo $key ?></span>
            <?php }?>
        </div>
        <div id="yng_page_trace_tab_cont" style="overflow:auto;height:212px;padding:0;line-height: 24px">
            <?php foreach ($trace as $info) {?>
            <div style="display:none;">
                <ol style="padding: 0; margin:0">
                    <?php
                    if (is_array($info)) {
                        foreach ($info as $k => $val) {
                            echo '<li style="border-bottom:1px solid #EEE;font-size:14px;padding:0 12px">' . (is_numeric($k) ? '' : $k.' : ') . htmlentities(print_r($val,true), ENT_COMPAT, 'utf-8') . '</li>';
                        }
                    }
                    ?>
                </ol>
            </div>
            <?php }?>
        </div>
    </div>
    <div id="yng_page_trace_close" style="display:none;text-align:right;height:15px;position:absolute;top:10px;right:12px;cursor:pointer;"><img style="vertical-align:top;" src="data:image/gif;base64,R0lGODlhDwAPAJEAAAAAAAMDA////wAAACH/C1hNUCBEYXRhWE1QPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4gPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS4wLWMwNjAgNjEuMTM0Nzc3LCAyMDEwLzAyLzEyLTE3OjMyOjAwICAgICAgICAiPiA8cmRmOlJERiB4bWxuczpyZGY9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkvMDIvMjItcmRmLXN5bnRheC1ucyMiPiA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtbG5zOnhtcE1NPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvbW0vIiB4bWxuczpzdFJlZj0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3NUeXBlL1Jlc291cmNlUmVmIyIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M1IFdpbmRvd3MiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6MUQxMjc1MUJCQUJDMTFFMTk0OUVGRjc3QzU4RURFNkEiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6MUQxMjc1MUNCQUJDMTFFMTk0OUVGRjc3QzU4RURFNkEiPiA8eG1wTU06RGVyaXZlZEZyb20gc3RSZWY6aW5zdGFuY2VJRD0ieG1wLmlpZDoxRDEyNzUxOUJBQkMxMUUxOTQ5RUZGNzdDNThFREU2QSIgc3RSZWY6ZG9jdW1lbnRJRD0ieG1wLmRpZDoxRDEyNzUxQUJBQkMxMUUxOTQ5RUZGNzdDNThFREU2QSIvPiA8L3JkZjpEZXNjcmlwdGlvbj4gPC9yZGY6UkRGPiA8L3g6eG1wbWV0YT4gPD94cGFja2V0IGVuZD0iciI/PgH//v38+/r5+Pf29fTz8vHw7+7t7Ovq6ejn5uXk4+Lh4N/e3dzb2tnY19bV1NPS0dDPzs3My8rJyMfGxcTDwsHAv769vLu6ubi3trW0s7KxsK+urayrqqmop6alpKOioaCfnp2cm5qZmJeWlZSTkpGQj46NjIuKiYiHhoWEg4KBgH9+fXx7enl4d3Z1dHNycXBvbm1sa2ppaGdmZWRjYmFgX15dXFtaWVhXVlVUU1JRUE9OTUxLSklIR0ZFRENCQUA/Pj08Ozo5ODc2NTQzMjEwLy4tLCsqKSgnJiUkIyIhIB8eHRwbGhkYFxYVFBMSERAPDg0MCwoJCAcGBQQDAgEAACH5BAAAAAAALAAAAAAPAA8AAAIdjI6JZqotoJPR1fnsgRR3C2jZl3Ai9aWZZooV+RQAOw==" /></div>
</div>
<div id="yng_page_trace_open" style="height:30px;float:right;text-align:right;overflow:hidden;position:fixed;bottom:0;right:0;color:#000;line-height:30px;cursor:pointer;">
    <div style="background:#232323;color:#FFF;padding:0 6px;float:right;line-height:30px;font-size:14px"><?php echo number_format(microtime(true)-\Yng\Facade\App::getBeginTime(), 6, '.', '').'s ';?></div>
    <img width="30" style="" title="ShowPageTrace" src="data:image/x-icon;base64,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">
</div>

<script type="text/javascript">
    (function(){
        var tab_tit  = document.getElementById('yng_page_trace_tab_tit').getElementsByTagName('span');
        var tab_cont = document.getElementById('yng_page_trace_tab_cont').getElementsByTagName('div');
        var open     = document.getElementById('yng_page_trace_open');
        var close    = document.getElementById('yng_page_trace_close').children[0];
        var trace    = document.getElementById('yng_page_trace_tab');
        var cookie   = document.cookie.match(/yngphp_show_page_trace=(\d\|\d)/);
        var history  = (cookie && typeof cookie[1] != 'undefined' && cookie[1].split('|')) || [0,0];
        open.onclick = function(){
            trace.style.display = 'block';
            this.style.display = 'none';
            close.parentNode.style.display = 'block';
            history[0] = 1;
            document.cookie = 'yngphp_show_page_trace='+history.join('|')
        }
        close.onclick = function(){
            trace.style.display = 'none';
            this.parentNode.style.display = 'none';
            open.style.display = 'block';
            history[0] = 0;
            document.cookie = 'yngphp_show_page_trace='+history.join('|')
        }
        for(var i = 0; i < tab_tit.length; i++){
            tab_tit[i].onclick = (function(i){
                return function(){
                    for(var j = 0; j < tab_cont.length; j++){
                        tab_cont[j].style.display = 'none';
                        tab_tit[j].style.color = '#999';
                    }
                    tab_cont[i].style.display = 'block';
                    tab_tit[i].style.color = '#000';
                    history[1] = i;
                    document.cookie = 'yngphp_show_page_trace='+history.join('|')
                }
            })(i)
        }
        parseInt(history[0]) && open.click();
        tab_tit[history[1]].click();
    })();
</script>
