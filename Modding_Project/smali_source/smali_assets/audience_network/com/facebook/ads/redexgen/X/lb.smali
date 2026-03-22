.class public final Lcom/facebook/ads/redexgen/X/lb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ez;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ey;->A00(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/3X;)Lcom/facebook/ads/redexgen/X/lb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/3X;

.field public final synthetic A01:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/3X;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96775
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/lb;->A01:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/lb;->A00:Lcom/facebook/ads/redexgen/X/3X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AGr()V
    .locals 2

    .line 96776
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/lb;->A00:Lcom/facebook/ads/redexgen/X/3X;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lb;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3X;->A31(Ljava/lang/Object;)V

    .line 96777
    return-void
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    .line 96778
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/lb;->A01:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96779
    return-void
.end method
