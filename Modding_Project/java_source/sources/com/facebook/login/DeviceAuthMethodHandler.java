package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.fragment.app.FragmentActivity;
import com.facebook.AccessToken;
import com.facebook.AccessTokenSource;
import com.facebook.login.LoginClient;
import com.google.ads.mediation.vungle.VungleConstants;
import com.vungle.ads.internal.ui.AdActivity;
import java.util.Collection;
import java.util.Date;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\b\u0017\u0018\u0000 12\u00020\u0001:\u00011B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u0011\b\u0014\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u0004\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0015\u001a\u00020\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0085\u0001\u0010&\u001a\u00020\u00112\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010\u001b\u001a\u00020\u00182\u0010\u0010\u001d\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u001c2\u0010\u0010\u001e\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u001c2\u0010\u0010\u001f\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0018\u0018\u00010\u001c2\b\u0010!\u001a\u0004\u0018\u00010 2\b\u0010#\u001a\u0004\u0018\u00010\"2\b\u0010$\u001a\u0004\u0018\u00010\"2\b\u0010%\u001a\u0004\u0018\u00010\"H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u000bH\u0016¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020\u00112\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b*\u0010+R\u001a\u00100\u001a\u00020\u00188\u0016X\u0096D¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/¨\u00062"}, d2 = {"Lcom/facebook/login/DeviceAuthMethodHandler;", "Lcom/facebook/login/LoginMethodHandler;", "Lcom/facebook/login/LoginClient;", "loginClient", "<init>", "(Lcom/facebook/login/LoginClient;)V", "Landroid/os/Parcel;", "parcel", "(Landroid/os/Parcel;)V", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "", "Wwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)I", "Lcom/facebook/login/DeviceAuthDialog;", "Wwwwwwwwwwwwwwwww", "()Lcom/facebook/login/DeviceAuthDialog;", "", "Wwwwwwwwwwwwwwww", "()V", "Ljava/lang/Exception;", "ex", "Wwwwwwwwwwwwwww", "(Ljava/lang/Exception;)V", "", "accessToken", "applicationId", VungleConstants.KEY_USER_ID, "", "permissions", "declinedPermissions", "expiredPermissions", "Lcom/facebook/AccessTokenSource;", "accessTokenSource", "Ljava/util/Date;", "expirationTime", "lastRefreshTime", "dataAccessExpirationTime", "Wwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)V", "describeContents", "()I", "Wwwwwwwwwwwww", "(Lcom/facebook/login/LoginClient$Request;)V", "Wwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "nameForLogging", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public class DeviceAuthMethodHandler extends LoginMethodHandler {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static ScheduledThreadPoolExecutor f6945Wwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6946Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final Parcelable.Creator<DeviceAuthMethodHandler> CREATOR = new Parcelable.Creator<DeviceAuthMethodHandler>() { // from class: com.facebook.login.DeviceAuthMethodHandler$Companion$CREATOR$1
        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public DeviceAuthMethodHandler[] newArray(int i) {
            return new DeviceAuthMethodHandler[i];
        }

        @Override // android.os.Parcelable.Creator
        @NotNull
        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
        public DeviceAuthMethodHandler createFromParcel(@NotNull Parcel parcel) {
            return new DeviceAuthMethodHandler(parcel);
        }
    };

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\u00020\u00048\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/facebook/login/DeviceAuthMethodHandler$Companion;", "", "<init>", "()V", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "Landroid/os/Parcelable$Creator;", "Lcom/facebook/login/DeviceAuthMethodHandler;", "CREATOR", "Landroid/os/Parcelable$Creator;", "backgroundExecutor", "Ljava/util/concurrent/ScheduledThreadPoolExecutor;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final synchronized ScheduledThreadPoolExecutor Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
            try {
                if (DeviceAuthMethodHandler.f6945Wwwwwwwwwwwwwwwwwwwwww == null) {
                    DeviceAuthMethodHandler.f6945Wwwwwwwwwwwwwwwwwwwwww = new ScheduledThreadPoolExecutor(1);
                }
                scheduledThreadPoolExecutor = DeviceAuthMethodHandler.f6945Wwwwwwwwwwwwwwwwwwwwww;
                if (scheduledThreadPoolExecutor == null) {
                    throw null;
                }
            } catch (Throwable th) {
                throw th;
            }
            return scheduledThreadPoolExecutor;
        }

        public Companion() {
        }
    }

    public DeviceAuthMethodHandler(@NotNull LoginClient loginClient) {
        super(loginClient);
        this.f6946Wwwwwwwwwwwwwwwwwwwwwww = "device_auth";
    }

    public final void Wwwwwwwwwwwww(LoginClient.Request request) {
        FragmentActivity Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null && !Wwwwwwwwwwwwwwwwwwwwwwwwww2.isFinishing()) {
            DeviceAuthDialog Wwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwww();
            Wwwwwwwwwwwwwwwww2.show(Wwwwwwwwwwwwwwwwwwwwwwwwww2.getSupportFragmentManager(), "login_with_facebook");
            Wwwwwwwwwwwwwwwww2.Www(request);
        }
    }

    public void Wwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3, @Nullable Collection<String> collection, @Nullable Collection<String> collection2, @Nullable Collection<String> collection3, @Nullable AccessTokenSource accessTokenSource, @Nullable Date date, @Nullable Date date2, @Nullable Date date3) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(), new AccessToken(str, str2, str3, collection, collection2, collection3, accessTokenSource, date, date2, date3, null, 1024, null)));
    }

    public void Wwwwwwwwwwwwwww(@NotNull Exception exc) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(), null, exc.getMessage(), null, 8, null));
    }

    public void Wwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwww(LoginClient.Result.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwww(), "User canceled log in."));
    }

    @NotNull
    public DeviceAuthDialog Wwwwwwwwwwwwwwwww() {
        return new DeviceAuthDialog();
    }

    @Override // com.facebook.login.LoginMethodHandler
    public int Wwwwwwwwwwwwwwwwwwww(@NotNull LoginClient.Request request) {
        Wwwwwwwwwwwww(request);
        return 1;
    }

    @Override // com.facebook.login.LoginMethodHandler
    @NotNull
    public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6946Wwwwwwwwwwwwwwwwwwwwwww;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public DeviceAuthMethodHandler(@NotNull Parcel parcel) {
        super(parcel);
        this.f6946Wwwwwwwwwwwwwwwwwwwwwww = "device_auth";
    }
}
