.class public final synthetic Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/ListenableFuture;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/cache/LocalCache$LoadingValueReference;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwww:I

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/cache/LocalCache$Segment;


# direct methods
.method public synthetic constructor <init>(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/cache/LocalCache$Segment;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 7
    .line 8
    iput p3, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/cache/LocalCache$Segment;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwww:Lcom/google/common/cache/LocalCache$LoadingValueReference;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/common/cache/Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwww:Lcom/google/common/util/concurrent/ListenableFuture;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/common/cache/LocalCache$Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/google/common/cache/LocalCache$Segment;Ljava/lang/Object;ILcom/google/common/cache/LocalCache$LoadingValueReference;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
