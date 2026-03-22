.class public final synthetic Lcom/android/billingclient/api/BillingClientKotlinKt$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/android/billingclient/api/ConsumeResponseListener;


# instance fields
.field public synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CompletableDeferred;
    .annotation build Landroidx/annotation/RecentlyNonNull;
    .end annotation
.end field


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/CompletableDeferred;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/CompletableDeferred;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/BillingClientKotlinKt$$ExternalSyntheticLambda1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CompletableDeferred;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/RecentlyNonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/BillingClientKotlinKt$$ExternalSyntheticLambda1;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lkotlinx/coroutines/CompletableDeferred;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/android/billingclient/api/BillingClientKotlinKt;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lkotlinx/coroutines/CompletableDeferred;Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
