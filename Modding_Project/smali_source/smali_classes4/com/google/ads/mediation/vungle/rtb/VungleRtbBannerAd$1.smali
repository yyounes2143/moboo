.class Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/google/ads/mediation/vungle/VungleInitializer$VungleInitializationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;->render()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;

.field final synthetic val$adMarkup:Ljava/lang/String;

.field final synthetic val$adSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$bannerAdSize:Lcom/vungle/ads/VungleAdSize;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementForPlay:Ljava/lang/String;

.field final synthetic val$watermark:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/vungle/ads/VungleAdSize;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->this$0:Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$placementForPlay:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$bannerAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$adMarkup:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$watermark:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->this$0:Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onInitializeSuccess()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->this$0:Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$placementForPlay:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$bannerAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$adMarkup:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd$1;->val$watermark:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static/range {v0 .. v6}, Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/ads/mediation/vungle/rtb/VungleRtbBannerAd;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdSize;Lcom/vungle/ads/VungleAdSize;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
