.class public abstract Lcom/facebook/ads/redexgen/X/hU;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/S7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RVCacheListener"
.end annotation


# instance fields
.field public final A00:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 85128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85129
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/hU;->A00:Z

    .line 85130
    return-void
.end method


# virtual methods
.method public abstract A00()V
.end method

.method public abstract A01(Z)V
.end method

.method public final ACh()V
    .locals 1

    .line 85131
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/hU;->A00:Z

    if-eqz v0, :cond_0

    .line 85132
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/hU;->A00()V

    .line 85133
    :goto_0
    return-void

    .line 85134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hU;->A01(Z)V

    goto :goto_0
.end method

.method public final ACq()V
    .locals 1

    .line 85135
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/hU;->A01(Z)V

    .line 85136
    return-void
.end method
