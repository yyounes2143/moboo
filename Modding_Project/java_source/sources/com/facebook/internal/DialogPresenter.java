package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.facebook.FacebookActivity;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.NativeProtocol;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0015\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001%B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ!\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u0013\u0010\fJ+\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u00142\b\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0007¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001c\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u001e2\u0006\u0010\u000e\u001a\u00020\rH\u0007¢\u0006\u0004\b\u001f\u0010 J'\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b#\u0010$¨\u0006&"}, d2 = {"Lcom/facebook/internal/DialogPresenter;", "", "<init>", "()V", "Lcom/facebook/internal/AppCall;", "appCall", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/AppCall;)V", "Lcom/facebook/FacebookException;", "validationError", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/AppCall;Lcom/facebook/FacebookException;)V", "Lcom/facebook/internal/DialogFeature;", "feature", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/DialogFeature;)Z", "exception", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "actionName", "Landroid/os/Bundle;", "parameters", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/AppCall;Ljava/lang/String;Landroid/os/Bundle;)V", "Lcom/facebook/internal/DialogPresenter$ParameterProvider;", "parameterProvider", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/AppCall;Lcom/facebook/internal/DialogPresenter$ParameterProvider;Lcom/facebook/internal/DialogFeature;)V", "Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/DialogFeature;)Lcom/facebook/internal/NativeProtocol$ProtocolVersionQueryResult;", "applicationId", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/internal/DialogFeature;)[I", "ParameterProvider", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class DialogPresenter {
    @NotNull
    public static final DialogPresenter INSTANCE = new DialogPresenter();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018\u00002\u00020\u0001R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00028&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0004¨\u0006\b"}, d2 = {"Lcom/facebook/internal/DialogPresenter$ParameterProvider;", "", "Landroid/os/Bundle;", "getParameters", "()Landroid/os/Bundle;", "parameters", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "legacyParameters", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface ParameterProvider {
        @Nullable
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        @Nullable
        Bundle getParameters();
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppCall appCall, @Nullable String str, @Nullable Bundle bundle) {
        Validate validate = Validate.INSTANCE;
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
        Bundle bundle2 = new Bundle();
        bundle2.putString("action", str);
        bundle2.putBundle("params", bundle);
        Intent intent = new Intent();
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        NativeProtocol.Wwwwwww(intent, appCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString(), str, NativeProtocol.Wwwwwwwwwwww(), bundle2);
        intent.setClass(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), FacebookActivity.class);
        intent.setAction("FacebookDialogFragment");
        appCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppCall appCall, @Nullable FacebookException facebookException) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appCall, facebookException);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppCall appCall, @NotNull ParameterProvider parameterProvider, @NotNull DialogFeature dialogFeature) {
        Bundle Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        String action = dialogFeature.getAction();
        NativeProtocol.ProtocolVersionQueryResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dialogFeature);
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != -1) {
            if (NativeProtocol.Wwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = parameterProvider.getParameters();
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = parameterProvider.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = new Bundle();
            }
            Intent Wwwwwwwwwwwwwwwwwwwwwww3 = NativeProtocol.Wwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww2, appCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString(), action, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (Wwwwwwwwwwwwwwwwwwwwwww3 != null) {
                appCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwww3);
                return;
            }
            throw new FacebookException("Unable to create Intent; this likely means theFacebook app is not installed.");
        }
        throw new FacebookException("Cannot present this dialog. This likely means that the Facebook app is not installed.");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppCall appCall, @Nullable FacebookException facebookException) {
        if (facebookException == null) {
            return;
        }
        Validate validate = Validate.INSTANCE;
        Validate.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
        Intent intent = new Intent();
        intent.setClass(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww(), FacebookActivity.class);
        intent.setAction("PassThrough");
        NativeProtocol nativeProtocol = NativeProtocol.INSTANCE;
        NativeProtocol.Wwwwwww(intent, appCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().toString(), null, NativeProtocol.Wwwwwwwwwwww(), NativeProtocol.Wwwwwwwwwwwwwwwwwwwwwwwwww(facebookException));
        appCall.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(intent);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AppCall appCall) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(appCall, new FacebookException("Unable to show the provided content via the web or the installed version of the Facebook app. Some dialogs are only supported starting API 14."));
    }

    @JvmStatic
    @NotNull
    public static final NativeProtocol.ProtocolVersionQueryResult Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DialogFeature dialogFeature) {
        String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        String action = dialogFeature.getAction();
        return NativeProtocol.Wwwwwwwwwwwwwww(action, INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwww2, action, dialogFeature));
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull DialogFeature dialogFeature) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(dialogFeature).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != -1) {
            return true;
        }
        return false;
    }

    public final int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2, DialogFeature dialogFeature) {
        int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        FetchedAppSettings.DialogFeatureConfig Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = FetchedAppSettings.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2, dialogFeature.name());
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null ? new int[]{dialogFeature.getMinVersion()} : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
    }
}
