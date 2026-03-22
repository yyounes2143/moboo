.class public final Lcom/facebook/ads/redexgen/X/kp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/I8;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEbmlProcessor"
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;)V
    .locals 0

    .line 95407
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;Lcom/facebook/ads/redexgen/X/IA;)V
    .locals 0

    .line 95408
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/kp;-><init>(Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;)V

    return-void
.end method


# virtual methods
.method public final A4a(IILcom/facebook/ads/redexgen/X/lN;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95409
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0U(IILcom/facebook/ads/redexgen/X/lN;)V

    .line 95410
    return-void
.end method

.method public final A6F(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95411
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0S(I)V

    .line 95412
    return-void
.end method

.method public final A6S(ID)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95413
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0T(ID)V

    .line 95414
    return-void
.end method

.method public final A7m(I)I
    .locals 1

    .line 95415
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0R(I)I

    move-result v0

    return v0
.end method

.method public final AA9(IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95416
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0V(IJ)V

    .line 95417
    return-void
.end method

.method public final AAN(I)Z
    .locals 1

    .line 95418
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0Y(I)Z

    move-result v0

    return v0
.end method

.method public final AJO(IJJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95419
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    move-wide v4, p4

    move-wide v2, p2

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0W(IJJ)V

    .line 95420
    return-void
.end method

.method public final AJZ(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/2i;
        }
    .end annotation

    .line 95421
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/kp;->A00:Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/androidx/media3/extractor/mkv/MatroskaExtractor;->A0X(ILjava/lang/String;)V

    .line 95422
    return-void
.end method
