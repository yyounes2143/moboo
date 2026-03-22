.class Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer$2;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->failedToReceiveAd(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;

.field final synthetic val$error:Lcom/google/android/gms/ads/AdError;


# direct methods
.method public constructor <init>(Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;Lcom/google/android/gms/ads/AdError;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer$2;->this$0:Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer$2;->val$error:Lcom/google/android/gms/ads/AdError;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer$2;->this$0:Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer$2;->val$error:Lcom/google/android/gms/ads/AdError;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
