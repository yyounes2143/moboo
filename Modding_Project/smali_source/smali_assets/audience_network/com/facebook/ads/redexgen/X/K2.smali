.class public final Lcom/facebook/ads/redexgen/X/K2;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/text/webvtt/WebvttCue$Builder$TextAlignment;
    }
.end annotation


# instance fields
.field public A00:F

.field public A01:F

.field public A02:F

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47677
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K2;->A00()V

    .line 47678
    return-void
.end method

.method private final A00()V
    .locals 2

    .line 47679
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A08:J

    .line 47680
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A07:J

    .line 47681
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A09:Ljava/lang/CharSequence;

    .line 47682
    const/4 v0, 0x2

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A06:I

    .line 47683
    const v1, -0x800001

    iput v1, p0, Lcom/facebook/ads/redexgen/X/K2;->A00:F

    .line 47684
    const/4 v0, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A04:I

    .line 47685
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A03:I

    .line 47686
    iput v1, p0, Lcom/facebook/ads/redexgen/X/K2;->A01:F

    .line 47687
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A05:I

    .line 47688
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/K2;->A02:F

    .line 47689
    return-void
.end method
