.class public final Lcom/facebook/ads/redexgen/X/Im;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/extractor/mp4/Track$Transformation;
    }
.end annotation


# instance fields
.field public final A00:I

.field public final A01:I

.field public final A02:I

.field public final A03:I

.field public final A04:J

.field public final A05:J

.field public final A06:J

.field public final A07:Lcom/facebook/ads/redexgen/X/or;

.field public final A08:[J

.field public final A09:[J

.field public final A0A:[Lcom/facebook/ads/redexgen/X/In;


# direct methods
.method public constructor <init>(IIJJJLcom/facebook/ads/redexgen/X/or;I[Lcom/facebook/ads/redexgen/X/In;I[J[J)V
    .locals 0

    .line 42238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42239
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Im;->A00:I

    .line 42240
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Im;->A03:I

    .line 42241
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/Im;->A06:J

    .line 42242
    iput-wide p5, p0, Lcom/facebook/ads/redexgen/X/Im;->A05:J

    .line 42243
    iput-wide p7, p0, Lcom/facebook/ads/redexgen/X/Im;->A04:J

    .line 42244
    iput-object p9, p0, Lcom/facebook/ads/redexgen/X/Im;->A07:Lcom/facebook/ads/redexgen/X/or;

    .line 42245
    iput p10, p0, Lcom/facebook/ads/redexgen/X/Im;->A02:I

    .line 42246
    iput-object p11, p0, Lcom/facebook/ads/redexgen/X/Im;->A0A:[Lcom/facebook/ads/redexgen/X/In;

    .line 42247
    iput p12, p0, Lcom/facebook/ads/redexgen/X/Im;->A01:I

    .line 42248
    iput-object p13, p0, Lcom/facebook/ads/redexgen/X/Im;->A08:[J

    .line 42249
    iput-object p14, p0, Lcom/facebook/ads/redexgen/X/Im;->A09:[J

    .line 42250
    return-void
.end method


# virtual methods
.method public final A00(I)Lcom/facebook/ads/redexgen/X/In;
    .locals 1

    .line 42251
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A0A:[Lcom/facebook/ads/redexgen/X/In;

    if-nez v0, :cond_0

    .line 42252
    const/4 v0, 0x0

    .line 42253
    :goto_0
    return-object v0

    .line 42254
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Im;->A0A:[Lcom/facebook/ads/redexgen/X/In;

    aget-object v0, v0, p1

    goto :goto_0
.end method
