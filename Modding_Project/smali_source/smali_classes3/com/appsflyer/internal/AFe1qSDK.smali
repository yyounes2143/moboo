.class public interface abstract Lcom/appsflyer/internal/AFe1qSDK;
.super Ljava/lang/Object;
.source "Proguard"


# virtual methods
.method public abstract getCurrencyIso4217Code(Lcom/appsflyer/internal/AFe1mSDK;)V
    .param p1    # Lcom/appsflyer/internal/AFe1mSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1mSDK<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract getRevenue(Lcom/appsflyer/internal/AFe1mSDK;Lcom/appsflyer/internal/AFe1uSDK;)V
    .param p1    # Lcom/appsflyer/internal/AFe1mSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFe1uSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1mSDK<",
            "*>;",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            ")V"
        }
    .end annotation
.end method
