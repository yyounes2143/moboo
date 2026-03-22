.class public final Lcom/facebook/appevents/AppEventsManager$start$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "com/facebook/appevents/AppEventsManager$start$1",
        "Lcom/facebook/internal/FetchedAppSettingsManager$FetchedAppSettingsCallback;",
        "Lcom/facebook/internal/FetchedAppSettings;",
        "fetchedAppSettings",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lcom/facebook/internal/FetchedAppSettings;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final Wwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/integrity/SensitiveParamsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/integrity/RedactedEventsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/integrity/BlocklistEventsManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/integrity/MACARuleMatchingManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/integrity/ProtectedModeManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/iap/InAppPurchaseManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/eventdeactivation/EventDeactivationManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/ml/ModelManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/cloudbridge/AppEventsCAPIManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/restrictivedatafilter/RestrictiveDataManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static final Wwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lcom/facebook/appevents/aam/MetadataIndexer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    :cond_0
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/facebook/appevents/AppEventsManager$start$1;->Wwwwwwwwwwww(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FetchedAppSettings;)V
    .locals 1
    .param p1    # Lcom/facebook/internal/FetchedAppSettings;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/facebook/internal/FeatureManager;->INSTANCE:Lcom/facebook/internal/FeatureManager;

    .line 2
    .line 3
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->AAM:Lcom/facebook/internal/FeatureManager$Feature;

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwww;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->RestrictiveDataFiltering:Lcom/facebook/internal/FeatureManager$Feature;

    .line 14
    .line 15
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwww;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 21
    .line 22
    .line 23
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->PrivacyProtection:Lcom/facebook/internal/FeatureManager$Feature;

    .line 24
    .line 25
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwww;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->EventDeactivation:Lcom/facebook/internal/FeatureManager$Feature;

    .line 34
    .line 35
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwww;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->IapLogging:Lcom/facebook/internal/FeatureManager$Feature;

    .line 44
    .line 45
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwww;

    .line 46
    .line 47
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwww;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->ProtectedMode:Lcom/facebook/internal/FeatureManager$Feature;

    .line 54
    .line 55
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwww;

    .line 56
    .line 57
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwww;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->MACARuleMatching:Lcom/facebook/internal/FeatureManager$Feature;

    .line 64
    .line 65
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwww;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwww;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->BlocklistEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 74
    .line 75
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwww;

    .line 76
    .line 77
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwww;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->FilterRedactedEvents:Lcom/facebook/internal/FeatureManager$Feature;

    .line 84
    .line 85
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwww;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwww;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 91
    .line 92
    .line 93
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->FilterSensitiveParams:Lcom/facebook/internal/FeatureManager$Feature;

    .line 94
    .line 95
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwww;

    .line 96
    .line 97
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/facebook/internal/FeatureManager$Feature;->CloudBridge:Lcom/facebook/internal/FeatureManager$Feature;

    .line 104
    .line 105
    new-instance v0, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwww;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/facebook/appevents/Wwwwwwwwwwwwwwwwwwwwwww;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {p1, v0}, Lcom/facebook/internal/FeatureManager;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/FeatureManager$Feature;Lcom/facebook/internal/FeatureManager$Callback;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 0

    .line 1
    return-void
.end method
