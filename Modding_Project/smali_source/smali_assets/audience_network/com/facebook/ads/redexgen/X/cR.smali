.class public final Lcom/facebook/ads/redexgen/X/cR;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A06:I

.field public static A07:I


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:Lcom/facebook/ads/redexgen/X/My;

.field public final A03:Ljava/lang/String;

.field public final A04:Z

.field public final A05:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 2576
    const/4 v0, 0x0

    sput v0, Lcom/facebook/ads/redexgen/X/cR;->A06:I

    .line 2577
    const/4 v0, 0x1

    sput v0, Lcom/facebook/ads/redexgen/X/cR;->A07:I

    return-void
.end method

.method public constructor <init>(ZILcom/facebook/ads/redexgen/X/My;ZILjava/lang/String;)V
    .locals 0

    .line 77952
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77953
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/cR;->A05:Z

    .line 77954
    iput p2, p0, Lcom/facebook/ads/redexgen/X/cR;->A00:I

    .line 77955
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/cR;->A02:Lcom/facebook/ads/redexgen/X/My;

    .line 77956
    iput-boolean p4, p0, Lcom/facebook/ads/redexgen/X/cR;->A04:Z

    .line 77957
    iput p5, p0, Lcom/facebook/ads/redexgen/X/cR;->A01:I

    .line 77958
    iput-object p6, p0, Lcom/facebook/ads/redexgen/X/cR;->A03:Ljava/lang/String;

    .line 77959
    return-void
.end method
