package com.facebook.login;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookSdk;
import com.facebook.internal.NativeProtocol;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0000\u0018\u0000 !2\u00020\u0001:\u0001!B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0016\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001a\u0010\u001a\u001a\u00020\u00158\u0016X\u0096D¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001a\u0010 \u001a\u00020\u001b8\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001f¨\u0006\""}, d2 = {"Lcom/facebook/login/InstagramAppLoginMethodHandler;", "Lcom/facebook/login/NativeAppLoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "source", "(Landroid/os/Parcel;)V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "describeContents", "()I", "dest", "flags", "", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "Wwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "nameForLogging", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/AccessTokenSource;", "Wwwwwwwwwwwwwww", "()Lcom/facebook/AccessTokenSource;", "tokenSource", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class InstagramAppLoginMethodHandler extends NativeAppLoginMethodHandler {
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AccessTokenSource f6955Wwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6956Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<InstagramAppLoginMethodHandler> CREATOR = new Parcelable.Creator<InstagramAppLoginMethodHandler>() { // from class: com.facebook.login.InstagramAppLoginMethodHandler$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public InstagramAppLoginMethodHandler[] newArray(int i) {
            return new InstagramAppLoginMethodHandler[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public InstagramAppLoginMethodHandler createFromParcel(@NotNull Parcel parcel) {
            return new InstagramAppLoginMethodHandler(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006X\u0087\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/login/InstagramAppLoginMethodHandler$Companion;", "", "()V", "CREATOR", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/InstagramAppLoginMethodHandler;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public InstagramAppLoginMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f6956Wwwwwwwwwwwwwwwwwwwwww = "instagram_login";
        this.f6955Wwwwwwwwwwwwwwwwwwwww = AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
    }

    @Override // com.facebook.login.NativeAppLoginMethodHandler
    @NotNull
    public AccessTokenSource Wwwwwwwwwwwwwww() {
        return this.f6955Wwwwwwwwwwwwwwwwwwwww;
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int Wwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request) {
        LoginClient.Companion companion = LoginClient.Companion;
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        Context Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        }
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Set<String> Wwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwww();
        boolean Wwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwww();
        DefaultAudience Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = DefaultAudience.NONE;
        }
        Intent Wwwwwwwwwwwwwwwwwwwwwwwww2 = NativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww3, Wwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()), request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), request.Wwwwwwwwwwwwwwwwwwwwwww(), request.Wwwwwwwwwwwwwwwwwwww(), request.Wwwwwwwwwwwwwwwwww(), request.Wwwwwwww());
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("e2e", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        return Wwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww2, companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) ? 1 : 0;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6956Wwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // com.facebook.login.LoginMethodHandler, android.os.Parcelable
    public void writeToParcel(@NotNull Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
    }

    public InstagramAppLoginMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f6956Wwwwwwwwwwwwwwwwwwwwww = "instagram_login";
        this.f6955Wwwwwwwwwwwwwwwwwwwww = AccessTokenSource.INSTAGRAM_APPLICATION_WEB;
    }
}
