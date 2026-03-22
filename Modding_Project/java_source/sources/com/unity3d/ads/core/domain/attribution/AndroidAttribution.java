package com.unity3d.ads.core.domain.attribution;

import android.adservices.AdServicesState;
import android.adservices.measurement.MeasurementManager;
import android.annotation.SuppressLint;
import android.content.Context;
import android.net.Uri;
import android.os.OutcomeReceiver;
import android.os.ext.SdkExtensions;
import android.view.InputEvent;
import androidx.core.os.Wwwwwwwwwwwwwwwwwwwwwwwww;
import androidx.privacysandbox.ads.adservices.measurement.Wwwwwwwwwwwwwwwwwwwwwwww;
import com.unity3d.ads.adplayer.AdPlayer;
import com.unity3d.ads.adplayer.WebViewContainer;
import com.unity3d.ads.core.data.model.AdObject;
import com.unity3d.ads.core.data.repository.SessionRepository;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import com.unity3d.ads.core.extensions.ProtobufExtensionsKt;
import com.unity3d.services.core.device.Device;
import com.unity3d.services.core.domain.ISDKDispatchers;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.SafeContinuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.ExecutorsKt;
import kotlinx.coroutines.flow.StateFlow;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0007\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u0012\u0010\u000b\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0002\u001a\u00020\u0003H\u0002J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0011\u0010\u0015\u001a\u00020\u0016H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J!\u0010\u0018\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0019\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@ø\u0001\u0000¢\u0006\u0002\u0010\u001aR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\t\u001a\u0004\u0018\u00010\n8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000b\u0010\fR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lcom/unity3d/ads/core/domain/attribution/AndroidAttribution;", "", "context", "Landroid/content/Context;", "dispatchers", "Lcom/unity3d/services/core/domain/ISDKDispatchers;", "sessionRepository", "Lcom/unity3d/ads/core/data/repository/SessionRepository;", "(Landroid/content/Context;Lcom/unity3d/services/core/domain/ISDKDispatchers;Lcom/unity3d/ads/core/data/repository/SessionRepository;)V", "measurementManager", "Landroid/adservices/measurement/MeasurementManager;", "getMeasurementManager", "()Landroid/adservices/measurement/MeasurementManager;", "measurementManager$delegate", "Lkotlin/Lazy;", "getUri", "Landroid/net/Uri;", "baseUrl", "", "adObject", "Lcom/unity3d/ads/core/data/model/AdObject;", "isAvailable", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerClick", "url", "(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "registerView", "unity-ads_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"NewApi", "MissingPermission"})
@SourceDebugExtension({"SMAP\nAndroidAttribution.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidAttribution.kt\ncom/unity3d/ads/core/domain/attribution/AndroidAttribution\n+ 2 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,130:1\n29#2:131\n*S KotlinDebug\n*F\n+ 1 AndroidAttribution.kt\ncom/unity3d/ads/core/domain/attribution/AndroidAttribution\n*L\n124#1:131\n*E\n"})
/* loaded from: classes6.dex */
public final class AndroidAttribution {
    @NotNull
    private final ISDKDispatchers dispatchers;
    @NotNull
    private final Lazy measurementManager$delegate;
    @NotNull
    private final SessionRepository sessionRepository;

    public AndroidAttribution(@NotNull final Context context, @NotNull ISDKDispatchers iSDKDispatchers, @NotNull SessionRepository sessionRepository) {
        this.dispatchers = iSDKDispatchers;
        this.sessionRepository = sessionRepository;
        this.measurementManager$delegate = LazyKt.lazy(new Function0<MeasurementManager>() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$measurementManager$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            @Nullable
            public final MeasurementManager invoke() {
                MeasurementManager measurementManager;
                measurementManager = AndroidAttribution.this.getMeasurementManager(context);
                return measurementManager;
            }
        });
    }

    private final MeasurementManager getMeasurementManager() {
        return Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.measurementManager$delegate.getValue());
    }

    private final Uri getUri(String str, AdObject adObject) {
        return Uri.parse(str).buildUpon().appendQueryParameter("sessionToken", ProtobufExtensionsKt.toBase64$default(this.sessionRepository.getSessionToken(), false, 1, null)).appendQueryParameter(HandleInvocationsFromAdViewer.KEY_TRACKING_TOKEN, ProtobufExtensionsKt.toBase64$default(adObject.getTrackingToken(), false, 1, null)).build();
    }

    @Nullable
    public final Object isAvailable(@NotNull Continuation<? super Boolean> continuation) {
        int extensionVersion;
        boolean isAdServicesStateEnabled;
        Unit unit;
        if (Device.getApiLevel() >= 33) {
            extensionVersion = SdkExtensions.getExtensionVersion(1000000);
            if (extensionVersion < 4) {
                return Boxing.boxBoolean(false);
            }
            if (getMeasurementManager() != null) {
                isAdServicesStateEnabled = AdServicesState.isAdServicesStateEnabled();
                if (!isAdServicesStateEnabled) {
                    return Boxing.boxBoolean(false);
                }
                final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
                MeasurementManager measurementManager = getMeasurementManager();
                if (measurementManager != null) {
                    measurementManager.getMeasurementApiStatus(ExecutorsKt.asExecutor(this.dispatchers.getDefault()), Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$isAvailable$2$1
                        public /* bridge */ /* synthetic */ void onResult(Object obj) {
                            onResult(((Number) obj).intValue());
                        }

                        public void onError(@NotNull Exception exc) {
                            Continuation<Boolean> continuation2 = safeContinuation;
                            Result.Companion companion = Result.Companion;
                            continuation2.resumeWith(Result.m438constructorimpl(Boolean.FALSE));
                        }

                        public void onResult(int i) {
                            Continuation<Boolean> continuation2 = safeContinuation;
                            Result.Companion companion = Result.Companion;
                            continuation2.resumeWith(Result.m438constructorimpl(Boolean.valueOf(i == 1)));
                        }
                    }));
                    unit = Unit.INSTANCE;
                } else {
                    unit = null;
                }
                if (unit == null) {
                    Result.Companion companion = Result.Companion;
                    safeContinuation.resumeWith(Result.m438constructorimpl(Boxing.boxBoolean(false)));
                }
                Object orThrow = safeContinuation.getOrThrow();
                if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                    DebugProbesKt.probeCoroutineSuspended(continuation);
                }
                return orThrow;
            }
            return Boxing.boxBoolean(false);
        }
        return Boxing.boxBoolean(false);
    }

    @Nullable
    public final Object registerClick(@NotNull String str, @NotNull AdObject adObject, @NotNull Continuation<? super Boolean> continuation) {
        WebViewContainer webViewContainer;
        StateFlow<InputEvent> lastInputEvent;
        InputEvent value;
        Unit unit;
        if (getMeasurementManager() == null) {
            return Boxing.boxBoolean(false);
        }
        AdPlayer adPlayer = adObject.getAdPlayer();
        if (adPlayer != null && (webViewContainer = adPlayer.getWebViewContainer()) != null && (lastInputEvent = webViewContainer.getLastInputEvent()) != null && (value = lastInputEvent.getValue()) != null) {
            final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
            MeasurementManager measurementManager = getMeasurementManager();
            if (measurementManager != null) {
                measurementManager.registerSource(getUri(str, adObject), value, ExecutorsKt.asExecutor(this.dispatchers.getDefault()), Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$registerClick$2$1
                    public void onResult(@NotNull Object obj) {
                        Continuation<Boolean> continuation2 = safeContinuation;
                        Result.Companion companion = Result.Companion;
                        continuation2.resumeWith(Result.m438constructorimpl(Boolean.TRUE));
                    }

                    public void onError(@NotNull Exception exc) {
                        Continuation<Boolean> continuation2 = safeContinuation;
                        Result.Companion companion = Result.Companion;
                        continuation2.resumeWith(Result.m438constructorimpl(Boolean.FALSE));
                    }
                }));
                unit = Unit.INSTANCE;
            } else {
                unit = null;
            }
            if (unit == null) {
                Result.Companion companion = Result.Companion;
                safeContinuation.resumeWith(Result.m438constructorimpl(Boxing.boxBoolean(false)));
            }
            Object orThrow = safeContinuation.getOrThrow();
            if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return orThrow;
        }
        return Boxing.boxBoolean(false);
    }

    @Nullable
    public final Object registerView(@NotNull String str, @NotNull AdObject adObject, @NotNull Continuation<? super Boolean> continuation) {
        if (getMeasurementManager() == null) {
            return Boxing.boxBoolean(false);
        }
        final SafeContinuation safeContinuation = new SafeContinuation(IntrinsicsKt.intercepted(continuation));
        MeasurementManager measurementManager = getMeasurementManager();
        Unit unit = null;
        if (measurementManager != null) {
            measurementManager.registerSource(getUri(str, adObject), null, ExecutorsKt.asExecutor(this.dispatchers.getDefault()), Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new OutcomeReceiver() { // from class: com.unity3d.ads.core.domain.attribution.AndroidAttribution$registerView$2$1
                public void onResult(@NotNull Object obj) {
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m438constructorimpl(Boolean.TRUE));
                }

                public void onError(@NotNull Exception exc) {
                    Continuation<Boolean> continuation2 = safeContinuation;
                    Result.Companion companion = Result.Companion;
                    continuation2.resumeWith(Result.m438constructorimpl(Boolean.FALSE));
                }
            }));
            unit = Unit.INSTANCE;
        }
        if (unit == null) {
            Result.Companion companion = Result.Companion;
            safeContinuation.resumeWith(Result.m438constructorimpl(Boxing.boxBoolean(false)));
        }
        Object orThrow = safeContinuation.getOrThrow();
        if (orThrow == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return orThrow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final MeasurementManager getMeasurementManager(Context context) {
        int extensionVersion;
        if (Device.getApiLevel() < 33) {
            return null;
        }
        extensionVersion = SdkExtensions.getExtensionVersion(1000000);
        if (extensionVersion < 4) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getSystemService(androidx.privacysandbox.ads.adservices.measurement.Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
    }
}
