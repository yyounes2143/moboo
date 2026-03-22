package com.facebook.login;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.FragmentActivity;
import com.facebook.FacebookSdk;
import com.facebook.internal.CustomTabUtils;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0007\b\u0007\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0018\u001a\u00020\u00138\u0016X\u0096D¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001a"}, d2 = {"Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "Lcom/facebook/login/NativeAppLoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "", "Wwwwwwwwwwwwwwwwwwwww", "()Z", "describeContents", "()I", "", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "nameForLogging", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@VisibleForTesting(otherwise = 3)
/* loaded from: classes4.dex */
public final class KatanaProxyLoginMethodHandler extends NativeAppLoginMethodHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6957Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator<KatanaProxyLoginMethodHandler>() { // from class: com.facebook.login.KatanaProxyLoginMethodHandler$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public KatanaProxyLoginMethodHandler[] newArray(int i) {
            return new KatanaProxyLoginMethodHandler[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public KatanaProxyLoginMethodHandler createFromParcel(@NotNull Parcel parcel) {
            return new KatanaProxyLoginMethodHandler(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/KatanaProxyLoginMethodHandler$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/KatanaProxyLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public KatanaProxyLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f6957Wwwwwwwwwwwwwwwwwwwwww = "katana_proxy_auth";
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int Wwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request) {
        boolean z;
        String name;
        LoginBehavior Wwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwww();
        if (FacebookSdk.f5997Wwwwwwwwwwwwwwwwww && CustomTabUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null && Wwwwwwwwwwwwwwwwwwwwwwwww2.allowsCustomTabAuth()) {
            z = true;
        } else {
            z = false;
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Set<String> Wwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwww();
        DefaultAudience Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DefaultAudience.NONE;
        }
        DefaultAudience defaultAudience = Wwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwww();
        boolean Wwwwwwww2 = request.Wwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwww();
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        CodeChallengeMethod Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            name = null;
        } else {
            name = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.name();
        }
        List<Intent> Wwwwwwwwwwwwwwwwwwww3 = NativeProtocol.Wwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwww2, defaultAudience, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, z, Wwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwww2, Wwwwwwww2, Wwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, name);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("e2e", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        int i = 0;
        for (Intent intent : Wwwwwwwwwwwwwwwwwwww3) {
            i++;
            if (Wwwwwwww(intent, LoginClient.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
                return i;
            }
        }
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public boolean Wwwwwwwwwwwwwwwwwwwww() {
        return true;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6957Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public KatanaProxyLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f6957Wwwwwwwwwwwwwwwwwwwwww = "katana_proxy_auth";
    }
}
