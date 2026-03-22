package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import androidx.core.app.NotificationCompat;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u000e\b&\u0018\u00002\u00020\u0001:\u0001DB9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011J\r\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\r\u0010\u0015\u001a\u00020\u000f¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u0019H\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001d\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010!\u001a\u00020\u000f2\u0006\u0010 \u001a\u00020\u001fH$¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010$\u001a\u00020#H\u0004¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u000fH\u0002¢\u0006\u0004\b'\u0010\u0016J\u0019\u0010)\u001a\u00020\u000f2\b\u0010(\u001a\u0004\u0018\u00010\u001fH\u0002¢\u0006\u0004\b)\u0010\"R\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004¢\u0006\f\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-R\u0014\u00101\u001a\u00020.8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u0010\u000e\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00106\u001a\u00020\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b=\u0010<R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b>\u0010?R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010<R\u0019\u0010\n\u001a\u0004\u0018\u00010\b8\u0006¢\u0006\f\n\u0004\bA\u0010?\u001a\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/facebook/internal/PlatformServiceClient;", "Landroid/content/ServiceConnection;", "Landroid/content/Context;", "context", "", "requestMessage", "replyMessage", "protocolVersion", "", "applicationId", "nonce", "<init>", "(Landroid/content/Context;IIILjava/lang/String;Ljava/lang/String;)V", "Lcom/facebook/internal/PlatformServiceClient$CompletedListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "Landroid/content/ComponentName;", "name", "Landroid/os/IBinder;", NotificationCompat.CATEGORY_SERVICE, "onServiceConnected", "(Landroid/content/ComponentName;Landroid/os/IBinder;)V", "onServiceDisconnected", "(Landroid/content/ComponentName;)V", "Landroid/os/Bundle;", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "Landroid/os/Message;", "message", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Message;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/content/Context;", "Landroid/os/Handler;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/Handler;", "handler", "Wwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/internal/PlatformServiceClient$CompletedListener;", "Wwwwwwwwwwwwwwwwwwwwww", "Z", "running", "Landroid/os/Messenger;", "Wwwwwwwwwwwwwwwwwwwww", "Landroid/os/Messenger;", "sender", "Wwwwwwwwwwwwwwwwwwww", "I", "Wwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwww", "getNonce", "()Ljava/lang/String;", "CompletedListener", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public abstract class PlatformServiceClient implements ServiceConnection {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6787Wwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f6788Wwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6789Wwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f6790Wwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f6791Wwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Messenger f6792Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6793Wwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public CompletedListener f6794Wwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Handler f6795Wwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f6796Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bæ\u0080\u0001\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lcom/facebook/internal/PlatformServiceClient$CompletedListener;", "", "Landroid/os/Bundle;", "result", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface CompletedListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Bundle bundle);
    }

    public PlatformServiceClient(@NotNull Context context, int i, int i2, int i3, @NotNull String str, @Nullable String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f6796Wwwwwwwwwwwwwwwwwwwwwwwww = applicationContext != null ? applicationContext : context;
        this.f6791Wwwwwwwwwwwwwwwwwwww = i;
        this.f6790Wwwwwwwwwwwwwwwwwww = i2;
        this.f6789Wwwwwwwwwwwwwwwwww = str;
        this.f6788Wwwwwwwwwwwwwwwww = i3;
        this.f6787Wwwwwwwwwwwwwwww = str2;
        this.f6795Wwwwwwwwwwwwwwwwwwwwwwww = new Handler() { // from class: com.facebook.internal.PlatformServiceClient.1
            @Override // android.os.Handler
            public void handleMessage(@NotNull Message message) {
                if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                    try {
                        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                            PlatformServiceClient.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(message);
                        }
                    } catch (Throwable th) {
                        CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
                    }
                }
            }
        };
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        synchronized (this) {
            boolean z = false;
            if (this.f6793Wwwwwwwwwwwwwwwwwwwwww) {
                return false;
            }
            NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
            if (NativeProtocol.Wwwwwwwwwwwww(this.f6788Wwwwwwwwwwwwwwwww) == -1) {
                return false;
            }
            Intent Wwwwwwwwwwwwwwwwwwwwww2 = NativeProtocol.Wwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
                z = true;
                this.f6793Wwwwwwwwwwwwwwwwwwwwww = true;
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().bindService(Wwwwwwwwwwwwwwwwwwwwww2, this, 1);
            }
            return z;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CompletedListener completedListener) {
        this.f6794Wwwwwwwwwwwwwwwwwwwwwww = completedListener;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", this.f6789Wwwwwwwwwwwwwwwwww);
        String str = this.f6787Wwwwwwwwwwwwwwww;
        if (str != null) {
            bundle.putString("com.facebook.platform.extra.NONCE", str);
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        Message obtain = Message.obtain((Handler) null, this.f6791Wwwwwwwwwwwwwwwwwwww);
        obtain.arg1 = this.f6788Wwwwwwwwwwwwwwwww;
        obtain.setData(bundle);
        obtain.replyTo = new Messenger(this.f6795Wwwwwwwwwwwwwwwwwwwwwwww);
        try {
            Messenger messenger = this.f6792Wwwwwwwwwwwwwwwwwwwww;
            if (messenger != null) {
                messenger.send(obtain);
            }
        } catch (RemoteException unused) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
        }
    }

    public abstract void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle);

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Message message) {
        if (message.what == this.f6790Wwwwwwwwwwwwwwwwwww) {
            Bundle data = message.getData();
            if (data.getString("com.facebook.platform.status.ERROR_TYPE") != null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(data);
            }
            try {
                this.f6796Wwwwwwwwwwwwwwwwwwwwwwwww.unbindService(this);
            } catch (IllegalArgumentException unused) {
            }
        }
    }

    @NotNull
    public final Context Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6796Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f6793Wwwwwwwwwwwwwwwwwwwwww = false;
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Bundle bundle) {
        if (this.f6793Wwwwwwwwwwwwwwwwwwwwww) {
            this.f6793Wwwwwwwwwwwwwwwwwwwwww = false;
            CompletedListener completedListener = this.f6794Wwwwwwwwwwwwwwwwwwwwwww;
            if (completedListener == null) {
                return;
            }
            completedListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bundle);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(@NotNull ComponentName componentName, @NotNull IBinder iBinder) {
        this.f6792Wwwwwwwwwwwwwwwwwwwww = new Messenger(iBinder);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(@NotNull ComponentName componentName) {
        this.f6792Wwwwwwwwwwwwwwwwwwwww = null;
        try {
            this.f6796Wwwwwwwwwwwwwwwwwwwwwwwww.unbindService(this);
        } catch (IllegalArgumentException unused) {
        }
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(null);
    }
}
