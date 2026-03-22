package com.changdu.mobovideo.net;

import android.os.Build;
import com.changdu.mobovideo.VideoApplication;
import com.changdu.mobovideo.utils.AppUtil;
import java.io.IOException;
import java.net.URLEncoder;
import kotlin.Metadata;
import kotlin.text.StringsKt;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\bR\u0016\u0010\f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\u000b¨\u0006\r"}, d2 = {"Lcom/changdu/mobovideo/net/VideoHttpCustomUserAgentInterceptor;", "Lokhttp3/Interceptor;", "<init>", "()V", "Lokhttp3/Interceptor$Chain;", "chain", "Lokhttp3/Response;", "intercept", "(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "mUserAgent", "app_outsideRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes3.dex */
public final class VideoHttpCustomUserAgentInterceptor implements Interceptor {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    @Override // okhttp3.Interceptor
    @NotNull
    public Response intercept(@NotNull Interceptor.Chain chain) throws IOException {
        Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            String str = this.f5557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (str == null || StringsKt.isBlank(str)) {
                AppUtil appUtil = AppUtil.INSTANCE;
                VideoApplication.Companion companion = VideoApplication.Companion;
                String encode = URLEncoder.encode(appUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), "UTF-8");
                String Wwwwwwwwwwwwwwwwwwwwwwwwww2 = appUtil.Wwwwwwwwwwwwwwwwwwwwwwwwww(companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                String packageName = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().getPackageName();
                String str2 = Build.VERSION.RELEASE;
                this.f5557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = encode + "/" + Wwwwwwwwwwwwwwwwwwwwwwwwww2 + "(" + packageName + ";android;" + str2 + ")";
            }
            return chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww("User-Agent").Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("User-Agent", this.f5557Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        } catch (Exception unused) {
            return chain.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }
}
