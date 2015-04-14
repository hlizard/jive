package view;

class MainView extends org.aswing.JWindow implements jive.DataContextControllable<viewmodel.MainViewModel> {

    var demoView_initialized:Bool = false;

    @:isVar public var demoView(get, set):demo.view.DemoView;

    public function destroyHml():Void {
        
    }
    

    inline function get_emptyBorder__0():org.aswing.border.EmptyBorder {
        /* declarations/desktop/view/MainView.xml:15 characters: 17-35 */
        var res = new org.aswing.border.EmptyBorder();
        /* declarations/desktop/view/MainView.xml:15 characters: 37-40 */
        res.top = 30;
        /* declarations/desktop/view/MainView.xml:15 characters: 68-73 */
        res.right = 30;
        /* declarations/desktop/view/MainView.xml:15 characters: 56-62 */
        res.bottom = 30;
        /* declarations/desktop/view/MainView.xml:15 characters: 46-50 */
        res.left = 30;
        return res;
    }

    inline function get_borderLayout__0():org.aswing.BorderLayout {
        /* declarations/desktop/view/MainView.xml:18 characters: 17-29 */
        var res = new org.aswing.BorderLayout();
        /* declarations/desktop/view/MainView.xml:18 characters: 31-35 */
        res.hgap = 50;
        /* declarations/desktop/view/MainView.xml:18 characters: 41-45 */
        res.vgap = 30;
        return res;
    }

    inline function get_assetIcon__0():org.aswing.AssetIcon {
        /* declarations/desktop/view/MainView.xml:24 characters: 25-34 */
        var res = new org.aswing.AssetIcon();
        if (null != dataContext) { res.asset = this.dataContext.jiveIcon; }
        var programmaticalyChange = false;
        var sourcePropertyListener = function(_,_) {
                            if (!programmaticalyChange) {
                                programmaticalyChange = true;
                                res.asset = this.dataContext.jiveIcon;
                                programmaticalyChange = false;
                            }
                        };
        var bindSourceListener = function() { bindx.Bind.bindx(this.dataContext.jiveIcon, sourcePropertyListener); }
        if (null != dataContext) { bindSourceListener(); }
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                if (null != old) { bindx.Bind.unbindx(old.jiveIcon, sourcePropertyListener);}
                                if (null != this.dataContext) {
                                    res.asset = this.dataContext.jiveIcon;
                                    bindSourceListener();
                                }
                            });
                        
        /* declarations/desktop/view/MainView.xml:24 characters: 63-68 */
        res.width = 53;
        /* declarations/desktop/view/MainView.xml:24 characters: 74-80 */
        res.height = 22;
        return res;
    }

    inline function get_jMenu__0():org.aswing.JMenu {
        /* declarations/desktop/view/MainView.xml:22 characters: 17-22 */
        var res = new org.aswing.JMenu();
        /* declarations/desktop/view/MainView.xml:22 characters: 24-31 */
        res.enabled = false;
        /* declarations/desktop/view/MainView.xml:23 characters: 21-25 */
        res.icon = get_assetIcon__0();
        return res;
    }

    inline function get_jMenuItem__0():org.aswing.JMenuItem {
        /* declarations/desktop/view/MainView.xml:28 characters: 25-34 */
        var res = new org.aswing.JMenuItem();
        /* declarations/desktop/view/MainView.xml:28 characters: 53-60 */
        res.subpath = 'buttons';
        /* declarations/desktop/view/MainView.xml:28 characters: 36-40 */
        res.text = 'Buttons';
        return res;
    }

    inline function get_jMenuItem__1():org.aswing.JMenuItem {
        /* declarations/desktop/view/MainView.xml:29 characters: 25-34 */
        var res = new org.aswing.JMenuItem();
        /* declarations/desktop/view/MainView.xml:29 characters: 57-64 */
        res.subpath = 'text-fields';
        /* declarations/desktop/view/MainView.xml:29 characters: 36-40 */
        res.text = 'Text fields';
        return res;
    }

    inline function get_jMenu__1():org.aswing.JMenu {
        /* declarations/desktop/view/MainView.xml:27 characters: 17-22 */
        var res = new org.aswing.JMenu();
        /* declarations/desktop/view/MainView.xml:27 characters: 38-45 */
        res.subpath = 'demo';
        /* declarations/desktop/view/MainView.xml:27 characters: 24-28 */
        res.text = 'Demo';
        res.append(get_jMenuItem__0());
        res.append(get_jMenuItem__1());
        return res;
    }

    inline function get_jMenu__2():org.aswing.JMenu {
        /* declarations/desktop/view/MainView.xml:31 characters: 17-22 */
        var res = new org.aswing.JMenu();
        /* declarations/desktop/view/MainView.xml:31 characters: 47-54 */
        res.subpath = 'docs';
        /* declarations/desktop/view/MainView.xml:31 characters: 24-28 */
        res.text = 'Documentation';
        return res;
    }

    inline function get_jMenu__3():org.aswing.JMenu {
        /* declarations/desktop/view/MainView.xml:32 characters: 17-22 */
        var res = new org.aswing.JMenu();
        /* declarations/desktop/view/MainView.xml:32 characters: 42-49 */
        res.subpath = 'download';
        /* declarations/desktop/view/MainView.xml:32 characters: 24-28 */
        res.text = 'Download';
        return res;
    }

    inline function get_jMenu__4():org.aswing.JMenu {
        /* declarations/desktop/view/MainView.xml:33 characters: 17-22 */
        var res = new org.aswing.JMenu();
        /* declarations/desktop/view/MainView.xml:33 characters: 44-51 */
        res.subpath = 'contribute';
        /* declarations/desktop/view/MainView.xml:33 characters: 24-28 */
        res.text = 'Contribute';
        return res;
    }

    inline function get_jMenuBar__0():org.aswing.JMenuBar {
        /* declarations/desktop/view/MainView.xml:21 characters: 13-21 */
        var res = new org.aswing.JMenuBar();
        /* declarations/desktop/view/MainView.xml:21 characters: 23-34 */
        res.constraints = org.aswing.BorderLayout.NORTH;
        res.addMenu(get_jMenu__0());
        res.addMenu(get_jMenu__1());
        res.addMenu(get_jMenu__2());
        res.addMenu(get_jMenu__3());
        res.addMenu(get_jMenu__4());
        return res;
    }

    inline function get_boxLayout__0():org.aswing.BoxLayout {
        /* declarations/desktop/view/MainView.xml:38 characters: 21-30 */
        var res = new org.aswing.BoxLayout();
        return res;
    }

    inline function get_htmlFrameView__0():HtmlFrameView {
        /* declarations/desktop/view/MainView.xml:40 characters: 17-32 */
        var res = new HtmlFrameView();
        return res;
    }

    function set_demoView(value:demo.view.DemoView):demo.view.DemoView {
        demoView_initialized = true;
        return demoView = value;
    }

    function get_demoView():demo.view.DemoView {
        /* declarations/desktop/view/MainView.xml:41 characters: 17-30 */
        if (demoView_initialized) return demoView;
        demoView_initialized = true;
        this.demoView = new demo.view.DemoView();
        var res = this.demoView;
        if (null != dataContext) { res.dataContext = this.dataContext.demoVM; }
        var programmaticalyChange = false;
        var sourcePropertyListener = function(_,_) {
                            if (!programmaticalyChange) {
                                programmaticalyChange = true;
                                res.dataContext = this.dataContext.demoVM;
                                programmaticalyChange = false;
                            }
                        };
        var bindSourceListener = function() { bindx.Bind.bindx(this.dataContext.demoVM, sourcePropertyListener); }
        if (null != dataContext) { bindSourceListener(); }
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                if (null != old) { bindx.Bind.unbindx(old.demoVM, sourcePropertyListener);}
                                if (null != this.dataContext) {
                                    res.dataContext = this.dataContext.demoVM;
                                    bindSourceListener();
                                }
                            });
                        
        return res;
    }

    inline function get_spot__0():jive.Spot {
        /* declarations/desktop/view/MainView.xml:36 characters: 13-22 */
        var res = new jive.Spot();
        if (null != dataContext) { res.selectedIndex = this.dataContext.contentIndex; }
        var programmaticalyChange = false;
        var sourcePropertyListener = function(_,_) {
                            if (!programmaticalyChange) {
                                programmaticalyChange = true;
                                res.selectedIndex = this.dataContext.contentIndex;
                                programmaticalyChange = false;
                            }
                        };
        var bindSourceListener = function() { bindx.Bind.bindx(this.dataContext.contentIndex, sourcePropertyListener); }
        if (null != dataContext) { bindSourceListener(); }
        bindx.Bind.bindx(this.dataContext, function(old,_) {
                                if (null != old) { bindx.Bind.unbindx(old.contentIndex, sourcePropertyListener);}
                                if (null != this.dataContext) {
                                    res.selectedIndex = this.dataContext.contentIndex;
                                    bindSourceListener();
                                }
                            });
                        
        /* declarations/desktop/view/MainView.xml:36 characters: 63-74 */
        res.constraints = org.aswing.BorderLayout.CENTER;
        /* declarations/desktop/view/MainView.xml:37 characters: 17-23 */
        res.layout = get_boxLayout__0();
        res.append(get_htmlFrameView__0());
        res.append(demoView);
        return res;
    }

    inline function get_jPanel__0():org.aswing.JPanel {
        /* declarations/desktop/view/MainView.xml:13 characters: 9-15 */
        var res = new org.aswing.JPanel();
        /* declarations/desktop/view/MainView.xml:14 characters: 13-19 */
        res.border = get_emptyBorder__0();
        /* declarations/desktop/view/MainView.xml:17 characters: 13-19 */
        res.layout = get_borderLayout__0();
        res.append(get_jMenuBar__0());
        res.append(get_spot__0());
        return res;
    }

    public function new() {
        /* declarations/desktop/view/MainView.xml:2 characters: 1-8 */
        super();
        /* declarations/desktop/view/MainView.xml:9 characters: 9-22 */
        this.defaultButton = demoView.buttonsView.defButton;
        /* declarations/desktop/view/MainView.xml:12 characters: 5-12 */
        this.content.append(get_jPanel__0());
    }
}