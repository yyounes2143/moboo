.class public interface abstract Lcom/appsflyer/internal/AFd1xSDK;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;
    }
.end annotation


# virtual methods
.method public abstract AFAdRevenueData()V
.end method

.method public abstract getMonetizationNetwork()V
.end method

.method public abstract getMonetizationNetwork(Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;)V
    .param p1    # Lcom/appsflyer/internal/AFd1xSDK$AFa1vSDK;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getMonetizationNetwork(Ljava/lang/Throwable;Ljava/lang/String;)V
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
