.class public final synthetic Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/collect/ImmutableList;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/collect/ImmutableList;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/collect/ImmutableList;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/util/concurrent/Wwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/google/common/util/concurrent/Futures;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/util/concurrent/Futures$InCompletionOrderState;Lcom/google/common/collect/ImmutableList;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
