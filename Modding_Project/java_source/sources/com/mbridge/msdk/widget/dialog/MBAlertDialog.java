package com.mbridge.msdk.widget.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.TextView;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import com.mbridge.msdk.foundation.controller.c;
import com.mbridge.msdk.foundation.tools.c1;
import com.mbridge.msdk.foundation.tools.g0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.w0;
import com.mbridge.msdk.setting.g;
import com.mbridge.msdk.setting.h;
import com.sensorsdata.analytics.android.autotrack.aop.SensorsDataAutoTrackHelper;
import com.sensorsdata.analytics.android.sdk.SensorsDataInstrumented;
import java.util.Locale;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class MBAlertDialog extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Button f10032a;
    private Button b;
    private TextView c;
    private com.mbridge.msdk.widget.dialog.b d;
    private TextView e;

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.widget.dialog.b f10033a;

        public a(com.mbridge.msdk.widget.dialog.b bVar) {
            this.f10033a = bVar;
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            com.mbridge.msdk.widget.dialog.b bVar = this.f10033a;
            if (bVar != null) {
                bVar.b();
            }
            MBAlertDialog.this.cancel();
            MBAlertDialog.this.clear();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public class b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ com.mbridge.msdk.widget.dialog.b f10034a;

        public b(com.mbridge.msdk.widget.dialog.b bVar) {
            this.f10034a = bVar;
        }

        @Override // android.view.View.OnClickListener
        @SensorsDataInstrumented
        public void onClick(View view) {
            com.mbridge.msdk.widget.dialog.b bVar = this.f10034a;
            if (bVar != null) {
                bVar.a();
            }
            MBAlertDialog.this.cancel();
            MBAlertDialog.this.clear();
            SensorsDataAutoTrackHelper.trackViewOnClick(view);
        }
    }

    public MBAlertDialog(Context context, com.mbridge.msdk.widget.dialog.b bVar) {
        super(context);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        requestWindowFeature(1);
        View inflate = LayoutInflater.from(context).inflate(g0.a(context, "mbridge_cm_alertview", "layout"), (ViewGroup) null);
        this.d = bVar;
        if (inflate != null) {
            setContentView(inflate);
            try {
                this.e = (TextView) inflate.findViewById(g0.a(context, "mbridge_video_common_alertview_titleview", "id"));
            } catch (Exception e) {
                o0.a("MBAlertDialog", e.getMessage());
            }
            try {
                this.c = (TextView) inflate.findViewById(g0.a(context, "mbridge_video_common_alertview_contentview", "id"));
                this.b = (Button) inflate.findViewById(g0.a(context, "mbridge_video_common_alertview_confirm_button", "id"));
                this.f10032a = (Button) inflate.findViewById(g0.a(context, "mbridge_video_common_alertview_cancel_button", "id"));
            } catch (Exception e2) {
                o0.a("MBAlertDialog", e2.getMessage());
            }
        }
        Button button = this.f10032a;
        if (button != null) {
            button.setOnClickListener(new a(bVar));
        }
        Button button2 = this.b;
        if (button2 != null) {
            button2.setOnClickListener(new b(bVar));
        }
        setCanceledOnTouchOutside(false);
        setCancelable(false);
    }

    private void a(int i) {
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            setTitle(i == com.mbridge.msdk.foundation.same.a.H ? "确认关闭？" : "提示");
            setContent(i == com.mbridge.msdk.foundation.same.a.H ? "如果你选择继续，结束后将会获得奖励。确认关闭吗？" : "如果你选择继续，结束后将会获得奖励。是否继续？");
            setConfirmText(i == com.mbridge.msdk.foundation.same.a.H ? "确认关闭" : "取消");
            setCancelText("继续");
            return;
        }
        setTitle(i == com.mbridge.msdk.foundation.same.a.H ? "Confirm" : "Tips");
        setContent(i == com.mbridge.msdk.foundation.same.a.H ? "If you choose to continue, you will receive a reward after the end. Confirm closed?" : "If you choose to continue, you will receive a reward after the end. Whether to continue?");
        setConfirmText(i == com.mbridge.msdk.foundation.same.a.H ? "Close" : "Cancel");
        setCancelText("Continue");
    }

    private void b() {
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            setTitle("确认关闭？");
            setContent("关闭后您将不会获得任何奖励噢~ ");
            setConfirmText("确认关闭");
            setCancelText("继续观看");
            return;
        }
        setTitle("Confirm to close? ");
        setContent("You will not be rewarded after closing the window");
        setConfirmText("Close it");
        setCancelText("Continue");
    }

    public void clear() {
        if (this.d != null) {
            this.d = null;
        }
    }

    public com.mbridge.msdk.widget.dialog.b getListener() {
        return this.d;
    }

    public void hideNavigationBar(Window window) {
        if (window != null) {
            window.setFlags(1024, 1024);
            window.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
            window.getDecorView().setSystemUiVisibility(InputDeviceCompat.SOURCE_TOUCHSCREEN);
            c1.a(window);
            window.setBackgroundDrawable(new ColorDrawable(0));
            window.setLayout(-1, -1);
            window.setGravity(17);
        }
    }

    public void makeDownloadAlert(String str) {
        com.mbridge.msdk.widget.dialog.a.a(this, str);
    }

    public void makeIVAlertView(int i, String str) {
        try {
            Context context = getContext();
            String obj = w0.a(context, "MBridge_ConfirmTitle" + str, "").toString();
            Context context2 = getContext();
            String obj2 = w0.a(context2, "MBridge_ConfirmContent" + str, "").toString();
            Context context3 = getContext();
            String obj3 = w0.a(context3, "MBridge_CancelText" + str, "").toString();
            Context context4 = getContext();
            String obj4 = w0.a(context4, "MBridge_ConfirmText" + str, "").toString();
            if (TextUtils.isEmpty(obj) && TextUtils.isEmpty(obj2) && TextUtils.isEmpty(obj3) && TextUtils.isEmpty(obj4)) {
                a(i);
            } else {
                a(obj, obj2, obj3, obj4);
            }
        } catch (Exception e) {
            o0.a("MBAlertDialog", e.getMessage());
        }
    }

    public void makeInsAlert(String str) {
        com.mbridge.msdk.widget.dialog.a.b(this, str);
    }

    public void makePlayableAlertView() {
        g d = h.b().d(c.m().b());
        if (d != null) {
            a(d.s(), d.q(), d.r(), d.o());
        } else {
            a();
        }
    }

    public void makeRVAlertView(String str) {
        try {
            Context context = getContext();
            String obj = w0.a(context, "MBridge_ConfirmTitle" + str, "").toString();
            Context context2 = getContext();
            String obj2 = w0.a(context2, "MBridge_ConfirmContent" + str, "").toString();
            Context context3 = getContext();
            String obj3 = w0.a(context3, "MBridge_CancelText" + str, "").toString();
            Context context4 = getContext();
            String obj4 = w0.a(context4, "MBridge_ConfirmText" + str, "").toString();
            g d = h.b().d(c.m().b());
            if (TextUtils.isEmpty(obj) && TextUtils.isEmpty(obj2) && TextUtils.isEmpty(obj3) && TextUtils.isEmpty(obj4)) {
                if (d != null) {
                    a(d.s(), d.q(), d.r(), d.p());
                    return;
                } else {
                    b();
                    return;
                }
            }
            String language = Locale.getDefault().getLanguage();
            if (TextUtils.isEmpty(obj)) {
                if (d != null) {
                    obj = d.s();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setTitle("确认关闭？");
                } else {
                    setTitle("Confirm to close? ");
                }
            }
            if (TextUtils.isEmpty(obj2)) {
                if (d != null) {
                    obj2 = d.q();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setContent("关闭后您将不会获得任何奖励噢~ ");
                } else {
                    setContent("You will not be rewarded after closing the window");
                }
            }
            if (TextUtils.isEmpty(obj4)) {
                if (d != null) {
                    obj4 = d.r();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setConfirmText("确认关闭");
                } else {
                    setConfirmText("Close it");
                }
            }
            if (TextUtils.isEmpty(obj3)) {
                if (d != null) {
                    obj3 = d.p();
                } else if (!TextUtils.isEmpty(language) && language.equals("zh")) {
                    setCancelText("继续观看");
                } else {
                    setCancelText("Continue");
                }
            }
            a(obj, obj2, obj4, obj3);
        } catch (Exception e) {
            o0.a("MBAlertDialog", e.getMessage());
        }
    }

    public void onlyShow() {
        super.show();
    }

    public void setCancelText(String str) {
        Button button = this.f10032a;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setConfirmText(String str) {
        Button button = this.b;
        if (button != null) {
            button.setText(str);
        }
    }

    public void setContent(String str) {
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public void setTitle(String str) {
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(str);
        }
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        try {
            getWindow().setFlags(8, 8);
            super.show();
            hideNavigationBar(getWindow());
            getWindow().clearFlags(8);
        } catch (Exception e) {
            o0.b("MBAlertDialog", e.getMessage());
            super.show();
        }
    }

    private void a(String str, String str2, String str3, String str4) {
        setTitle(str);
        setContent(str2);
        setConfirmText(str3);
        setCancelText(str4);
    }

    private void a() {
        String language = Locale.getDefault().getLanguage();
        if (!TextUtils.isEmpty(language) && language.equals("zh")) {
            setTitle("确认关闭？");
            setContent("关闭后您将不会获得任何奖励噢~ ");
            setConfirmText("确认关闭");
            setCancelText("继续试玩");
            return;
        }
        setTitle("Confirm to close? ");
        setContent("You will not be rewarded after closing the window");
        setConfirmText("Close it");
        setCancelText("Continue");
    }
}
