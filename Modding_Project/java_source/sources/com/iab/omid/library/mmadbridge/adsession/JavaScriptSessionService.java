package com.iab.omid.library.mmadbridge.adsession;

import android.net.Uri;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import androidx.webkit.JavaScriptReplyProxy;
import androidx.webkit.WebMessageCompat;
import androidx.webkit.WebViewCompat;
import com.iab.omid.library.mmadbridge.internal.e;
import com.iab.omid.library.mmadbridge.internal.f;
import com.iab.omid.library.mmadbridge.utils.d;
import com.iab.omid.library.mmadbridge.utils.i;
import java.util.HashMap;
import java.util.Timer;
import java.util.TimerTask;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class JavaScriptSessionService {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static i f8236Wwwwwwwwwwwwwwwwwwwwww = new i();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8237Wwwwwwwwwwwwwwwwwwwwwww = "adSessionId";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8238Wwwwwwwwwwwwwwwwwwwwwwww = "finishSession";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8239Wwwwwwwwwwwwwwwwwwwwwwwww = "startSession";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8240Wwwwwwwwwwwwwwwwwwwwwwwwww = "omidJsSessionService";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8241Wwwwwwwwwwwwwwwwwwwwwwwwwww = "data";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f8242Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "method";

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final f f8243Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HashMap<String, AdSession> f8244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public com.iab.omid.library.mmadbridge.weakreference.a f8245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final boolean f8246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final WebView f8247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Partner f8248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: com.iab.omid.library.mmadbridge.adsession.JavaScriptSessionService$1  reason: invalid class name */
    /* loaded from: classes5.dex */
    class AnonymousClass1 extends TimerTask {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ JavaScriptSessionService f8249Wwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Timer f8250Wwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ TearDownHandler f8251Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            this.f8249Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwww();
            this.f8251Wwwwwwwwwwwwwwwwwwwwwwwww.onTearDown(true);
            this.f8250Wwwwwwwwwwwwwwwwwwwwwwww.cancel();
        }
    }

    /* renamed from: com.iab.omid.library.mmadbridge.adsession.JavaScriptSessionService$2  reason: invalid class name */
    /* loaded from: classes5.dex */
    class AnonymousClass2 implements WebViewCompat.WebMessageListener {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ JavaScriptSessionService f8252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // androidx.webkit.WebViewCompat.WebMessageListener
        public void onPostMessage(WebView webView, WebMessageCompat webMessageCompat, Uri uri, boolean z, JavaScriptReplyProxy javaScriptReplyProxy) {
            try {
                JSONObject jSONObject = new JSONObject(webMessageCompat.getData());
                String string = jSONObject.getString(JavaScriptSessionService.f8242Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
                String string2 = jSONObject.getJSONObject(JavaScriptSessionService.f8241Wwwwwwwwwwwwwwwwwwwwwwwwwww).getString(JavaScriptSessionService.f8237Wwwwwwwwwwwwwwwwwwwwwww);
                if (string.equals(JavaScriptSessionService.f8239Wwwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f8252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwww(string2);
                } else if (string.equals(JavaScriptSessionService.f8238Wwwwwwwwwwwwwwwwwwwwwwww)) {
                    this.f8252Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww(string2);
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
        View Wwwwwwwwwwwwwwwwwwwwwww2;
        a aVar = new a(Wwwwwwwwwwwwwwwwwwwwwwwwww(), Wwwwwwwwwwwwwwwwwwwwwwwww(), str);
        this.f8244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, aVar);
        if (this.f8246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwww2 = this.f8247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwww();
        }
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2);
        for (e eVar : this.f8243Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().get(), eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), eVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        }
        aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwww() {
        f8236Wwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, f8240Wwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Nullable
    public View Wwwwwwwwwwwwwwwwwwwwwww() {
        com.iab.omid.library.mmadbridge.weakreference.a aVar = this.f8245Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (aVar == null) {
            return null;
        }
        return aVar.get();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwww(String str) {
        AdSession adSession = this.f8244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str);
        if (adSession != null) {
            adSession.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            this.f8244Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(str);
        }
    }

    public final AdSessionContext Wwwwwwwwwwwwwwwwwwwwwwwww() {
        if (this.f8246Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
        }
        return AdSessionContext.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8248Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f8247Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, null, null);
    }

    public final AdSessionConfiguration Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        CreativeType creativeType = CreativeType.DEFINED_BY_JAVASCRIPT;
        ImpressionType impressionType = ImpressionType.DEFINED_BY_JAVASCRIPT;
        Owner owner = Owner.JAVASCRIPT;
        return AdSessionConfiguration.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(creativeType, impressionType, owner, owner, false);
    }
}
