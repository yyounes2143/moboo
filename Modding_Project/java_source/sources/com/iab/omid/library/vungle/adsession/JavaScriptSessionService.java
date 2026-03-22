package com.iab.omid.library.vungle.adsession;

import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import com.iab.omid.library.vungle.internal.e;
import com.iab.omid.library.vungle.internal.f;
import com.iab.omid.library.vungle.utils.d;
import com.iab.omid.library.vungle.utils.i;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class JavaScriptSessionService {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static i f8542Wwwwwwwwwwwwwwwwwwwwww = new i();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8543Wwwwwwwwwwwwwwwwwwwwwww = "adSessionId";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8544Wwwwwwwwwwwwwwwwwwwwwwww = "finishSession";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8545Wwwwwwwwwwwwwwwwwwwwwwwww = "startSession";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8546Wwwwwwwwwwwwwwwwwwwwwwwwww = "omidJsSessionService";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8547Wwwwwwwwwwwwwwwwwwwwwwwwwww = "data";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8548Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "method";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final f f8549Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, AdSession> f8550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.vungle.weakreference.a f8551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8552Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WebView f8553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Partner f8554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: com.iab.omid.library.vungle.adsession.JavaScriptSessionService$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    class AnonymousClass1 extends TimerTask {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ JavaScriptSessionService f8555Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Timer f8556Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ TearDownHandler f8557Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f8555Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            this.f8557Wwwwwwwwwwwwwwwwwwwwwwwww.onTearDown(true);
            this.f8556Wwwwwwwwwwwwwwwwwwwwwwww.cancel();
        }
    }

    /* renamed from: com.iab.omid.library.vungle.adsession.JavaScriptSessionService$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    class AnonymousClass2 implements WebViewCompat.WebMessageListener {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ JavaScriptSessionService f8558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // androidx.webkit.WebViewCompat.WebMessageListener
        public void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
            try {
                JSONObject jSONObject = new JSONObject(webMessageCompat.getData());
                String string = jSONObject.getString(JavaScriptSessionService.f8548Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                String string2 = jSONObject.getJSONObject(JavaScriptSessionService.f8547Wwwwwwwwwwwwwwwwwwwwwwwwwww).getString(JavaScriptSessionService.f8543Wwwwwwwwwwwwwwwwwwwwwww);
                if (string.equals(JavaScriptSessionService.f8545Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f8558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(string2);
                } else if (string.equals(JavaScriptSessionService.f8544Wwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f8558Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(string2);
                } else {
                    d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Unexpected method in JavaScriptSessionService: " + string);
                }
            } catch (JSONException e) {
                d.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("Error parsing JS message in JavaScriptSessionService.", e);
            }
        }
    }

    /* loaded from: classes5.dex */
    public interface TearDownHandler {
        void onTearDown(boolean z);
    }

    public final void Wwwwwwwwwwwwwwwwwwwww(String str) {
        a aVar = new a(Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwww(), str);
        this.f8550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, aVar);
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww());
        for (e eVar : this.f8549Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(), eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        f8542Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f8546Wwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Nullable
    public View Wwwwwwwwwwwwwwwwwwwwwww() {
        com.iab.omid.library.vungle.weakreference.a aVar = this.f8551Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (aVar == null) {
            return null;
        }
        return aVar.get();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(String str) {
        AdSession adSession = this.f8550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        if (adSession != null) {
            adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8550Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(str);
        }
    }

    public final AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8552Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
        }
        return AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8554Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8553Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
    }

    public final AdSessionConfiguration Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
        ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
        Owner owner = Owner.JAVASCRIPT;
        return AdSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(creativeType, impressionType, owner, owner, false);
    }
}
