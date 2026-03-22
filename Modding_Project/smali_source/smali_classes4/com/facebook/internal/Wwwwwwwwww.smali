.class public final synthetic Lcom/facebook/internal/Wwwwwwwwww;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue$WorkNode;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/internal/WorkQueue$WorkNode;Lcom/facebook/internal/WorkQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/facebook/internal/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/internal/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/internal/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/facebook/internal/Wwwwwwwwww;->Wwwwwwwwwwwwwwwwwwwwwwww:Lcom/facebook/internal/WorkQueue;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/facebook/internal/WorkQueue;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/facebook/internal/WorkQueue$WorkNode;Lcom/facebook/internal/WorkQueue;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
