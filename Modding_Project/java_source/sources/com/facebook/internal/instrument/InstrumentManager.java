package com.facebook.internal.instrument;

import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.instrument.InstrumentManager;
import com.facebook.internal.instrument.anrreport.ANRHandler;
import com.facebook.internal.instrument.crashreport.CrashHandler;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.facebook.internal.instrument.errorreport.ErrorReportHandler;
import com.facebook.internal.instrument.threadcheck.ThreadCheckHandler;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/instrument/InstrumentManager;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes4.dex */
public final class InstrumentManager {
    @NotNull
    public static final InstrumentManager INSTANCE = new InstrumentManager();

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            ANRHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            ErrorReportHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            CrashHandler.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            FeatureManager featureManager = FeatureManager.INSTANCE;
            if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.CrashShield)) {
                ExceptionAnalyzer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.ThreadCheck)) {
                ThreadCheckHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!FacebookSdk.Wwwwwwwwwwwwwwwwwww()) {
            return;
        }
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.CrashReport, new FeatureManager.Callback() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                InstrumentManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.ErrorReport, new FeatureManager.Callback() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                InstrumentManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.AnrReport, new FeatureManager.Callback() { // from class: Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                InstrumentManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(z);
            }
        });
    }
}
