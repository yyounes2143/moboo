.class public final Lcom/facebook/ads/redexgen/X/J9;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CueStyle"
.end annotation


# instance fields
.field public A00:I

.field public final A01:I

.field public final A02:Z


# direct methods
.method public constructor <init>(IZI)V
    .locals 0

    .line 43354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43355
    iput p1, p0, Lcom/facebook/ads/redexgen/X/J9;->A01:I

    .line 43356
    iput-boolean p2, p0, Lcom/facebook/ads/redexgen/X/J9;->A02:Z

    .line 43357
    iput p3, p0, Lcom/facebook/ads/redexgen/X/J9;->A00:I

    .line 43358
    return-void
.end method
