package com.facebook.appevents;

import com.facebook.appevents.aam.MetadataIndexer;
import com.facebook.appevents.cloudbridge.AppEventsCAPIManager;
import com.facebook.appevents.eventdeactivation.EventDeactivationManager;
import com.facebook.appevents.iap.InAppPurchaseManager;
import com.facebook.appevents.integrity.BlocklistEventsManager;
import com.facebook.appevents.integrity.MACARuleMatchingManager;
import com.facebook.appevents.integrity.ProtectedModeManager;
import com.facebook.appevents.integrity.RedactedEventsManager;
import com.facebook.appevents.integrity.SensitiveParamsManager;
import com.facebook.appevents.ml.ModelManager;
import com.facebook.appevents.restrictivedatafilter.RestrictiveDataManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.FetchedAppSettings;
import com.facebook.internal.FetchedAppSettingsManager;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"com/facebook/appevents/AppEventsManager$start$1", "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;", "Lcom/facebook/internal/FetchedAppSettings;", "fetchedAppSettings", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/FetchedAppSettings;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class AppEventsManager$start$1 implements FetchedAppSettingsManager.FetchedAppSettingsCallback {
    public static final void Wwwwwwwwwww(boolean z) {
        if (z) {
            SensitiveParamsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwww(boolean z) {
        if (z) {
            RedactedEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwww(boolean z) {
        if (z) {
            BlocklistEventsManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwww(boolean z) {
        if (z) {
            MACARuleMatchingManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwww(boolean z) {
        if (z) {
            ProtectedModeManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            InAppPurchaseManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            EventDeactivationManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            ModelManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            AppEventsCAPIManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            RestrictiveDataManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    public static final void Wwwwwwwwwwwwwwwwwwwww(boolean z) {
        if (z) {
            MetadataIndexer.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }

    @Override // com.facebook.internal.FetchedAppSettingsManager.FetchedAppSettingsCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FetchedAppSettings fetchedAppSettings) {
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.AAM, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.RestrictiveDataFiltering, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.PrivacyProtection, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.EventDeactivation, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.IapLogging, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.ProtectedMode, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.MACARuleMatching, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.BlocklistEvents, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.FilterRedactedEvents, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.FilterSensitiveParams, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwww(z);
            }
        });
        FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(FeatureManager.Feature.CloudBridge, new FeatureManager.Callback() { // from class: com.facebook.appevents.Wwwwwwwwwwwwwwwwwwwwwww
            @Override // com.facebook.internal.FeatureManager.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z) {
                AppEventsManager$start$1.Wwwwwwwwwwwwwwwwwww(z);
            }
        });
    }

    @Override // com.facebook.internal.FetchedAppSettingsManager.FetchedAppSettingsCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
    }
}
