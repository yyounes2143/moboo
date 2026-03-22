.class Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;->processNativeAd(Lcom/mbridge/msdk/out/Campaign;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;

.field final synthetic val$campaign:Lcom/mbridge/msdk/out/Campaign;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;Lcom/mbridge/msdk/out/Campaign;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mbridge/msdk/out/Campaign;->getIconUrl()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->val$campaign:Lcom/mbridge/msdk/out/Campaign;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/mbridge/msdk/out/Campaign;->getImageUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;

    .line 14
    .line 15
    iget-object v3, v2, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;->access$1700(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;)Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v3, v0, v2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->createDrawableFuture(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/concurrent/Future;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v3, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 34
    .line 35
    invoke-direct {v3, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/net/Uri;)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x0

    .line 39
    :try_start_0
    const-string v4, "image_task_timeout_seconds"

    .line 40
    .line 41
    iget-object v5, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;

    .line 42
    .line 43
    invoke-static {v5}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;->access$1800(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;)Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-interface {v5}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->getServerParameters()Landroid/os/Bundle;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const/4 v6, 0x5

    .line 52
    invoke-static {v4, v6, v5}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;ILandroid/os/Bundle;)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    int-to-long v4, v4

    .line 57
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    invoke-interface {v2, v4, v5, v6}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    if-eqz v2, :cond_0

    .line 66
    .line 67
    new-instance v4, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 68
    .line 69
    invoke-direct {v4, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    move-object v1, v4

    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v2

    .line 75
    iget-object v4, p0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;->this$1:Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;

    .line 76
    .line 77
    iget-object v4, v4, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/MintegralMediationAdapter;

    .line 78
    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v6, "Failed to fetch icon image from URL: "

    .line 85
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v4, v0, v2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    :cond_0
    :goto_0
    new-instance v0, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1$1;

    .line 100
    .line 101
    invoke-direct {v0, p0, v1, v3}, Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1$1;-><init>(Lcom/applovin/mediation/adapters/MintegralMediationAdapter$NativeAdListener$1;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
