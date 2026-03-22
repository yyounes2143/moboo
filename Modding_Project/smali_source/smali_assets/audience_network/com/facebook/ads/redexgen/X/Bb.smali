.class public abstract Lcom/facebook/ads/redexgen/X/Bb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/gE;


# instance fields
.field public A00:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31395
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9l(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31396
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31397
    return-void
.end method

.method public final A9m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 31398
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31399
    return-void
.end method

.method public final AAP(I)Z
    .locals 1

    .line 31400
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Bb;->A00:I

    if-gt v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AIo(I)V
    .locals 0

    .line 31401
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Bb;->A00:I

    .line 31402
    return-void
.end method
