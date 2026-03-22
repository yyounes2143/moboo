.class public final Lcom/facebook/ads/redexgen/X/C6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/fD;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5e()J
    .locals 2

    .line 31739
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final AJK(Ljava/lang/Object;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 31740
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 31741
    return-void
.end method
