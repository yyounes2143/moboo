.class public interface abstract Lcom/applovin/mediation/MaxRewardedAdListener;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/applovin/mediation/MaxAdListener;


# virtual methods
.method public abstract onUserRewarded(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxReward;)V
    .param p1    # Lcom/applovin/mediation/MaxAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/mediation/MaxReward;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
