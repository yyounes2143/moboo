.class Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAd;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/MintegralMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MaxMintegralNativeAd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public prepareForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$900(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/mbridge/msdk/out/Campaign;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 10
    .line 11
    const-string p2, "Failed to register native ad views: native ad is null."

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "Preparing views for interaction: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " with container: "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v1, v2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->d(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 53
    .line 54
    if-ne v1, v2, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$2000(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$2000(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1, p2, p1, v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->registerView(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 75
    .line 76
    const-string v1, "Failed to register native ad views: mbBidNativeHandler is null."

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$2100(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-eqz v1, :cond_3

    .line 89
    .line 90
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$2100(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;)Lcom/mbridge/msdk/out/MBBidNativeHandler;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1, p2, p1, v0}, Lcom/mbridge/msdk/out/MBBidNativeHandler;->registerView(Landroid/view/View;Ljava/util/List;Lcom/mbridge/msdk/out/Campaign;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 101
    .line 102
    const-string v1, "Failed to register native ad views: mbBidNativeAdViewHandler is null."

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :goto_0
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 108
    .line 109
    invoke-static {v0, p2}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$2202(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 110
    .line 111
    .line 112
    iget-object p2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$MaxMintegralNativeAd;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 113
    .line 114
    invoke-static {p2, p1}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter;->access$2302(Lcom/applovin/mediation/adapters/MintegralMediationAdapter;Ljava/util/List;)Ljava/util/List;

    .line 115
    .line 116
    .line 117
    const/4 p1, 0x1

    .line 118
    return p1
.end method
