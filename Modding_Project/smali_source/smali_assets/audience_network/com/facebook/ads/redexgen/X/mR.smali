.class public final Lcom/facebook/ads/redexgen/X/mR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Cb;


# static fields
.field public static A03:[B

.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/GX;

.field public A01:Lcom/facebook/ads/redexgen/X/lN;

.field public final A02:Lcom/facebook/ads/redexgen/X/Gb;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3153
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "3Cx8VuBaAtU"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "mtIvitx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ijtxGWvqwx8wBPOmSGXshyr4piVUOT73"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "1A2eWfmauMvQ3z4CiBElgktZxGJ5t0Vj"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "NuAYfoZUoES6MxZb2vdyJB2K3PVOnnYD"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "gczB0K5G5"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "TBGYu08V4AAoblIa0rbrS9oc16PYokVw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "JGtQJ9cae1Y"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/mR;->A04:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/mR;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Gb;)V
    .locals 0

    .line 98699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98700
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/mR;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    .line 98701
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/mR;->A03:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x4e

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x3a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/mR;->A03:[B

    return-void

    :array_0
    .array-data 1
        0x50t
        0x59t
        0x1at
        0x16t
        0xct
        0x15t
        0x1dt
        0x59t
        0xbt
        0x1ct
        0x18t
        0x1dt
        0x59t
        0xdt
        0x11t
        0x1ct
        0x59t
        0xat
        0xdt
        0xbt
        0x1ct
        0x18t
        0x14t
        0x57t
        0x2t
        0x23t
        0x22t
        0x29t
        0x6ct
        0x23t
        0x2at
        0x6ct
        0x38t
        0x24t
        0x29t
        0x6ct
        0x2dt
        0x3at
        0x2dt
        0x25t
        0x20t
        0x2dt
        0x2et
        0x20t
        0x29t
        0x6ct
        0x29t
        0x34t
        0x38t
        0x3et
        0x2dt
        0x2ft
        0x38t
        0x23t
        0x3et
        0x3ft
        0x6ct
        0x64t
    .end array-data
.end method


# virtual methods
.method public final A5q()V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "No op, we don\'t include mp3 extractor due to apk size"
    .end annotation

    .line 98702
    return-void
.end method

.method public final A7S()J
    .locals 2

    .line 98703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A01:Lcom/facebook/ads/redexgen/X/lN;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A01:Lcom/facebook/ads/redexgen/X/lN;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/lN;->A8f()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public final AA3(Lcom/facebook/ads/redexgen/X/nl;Landroid/net/Uri;Ljava/util/Map;JJLcom/facebook/ads/redexgen/X/GY;)V
    .locals 15
    .param p1    # Lcom/facebook/ads/redexgen/X/nl;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = " To be replaced with DataReader after upstream is updated"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/nl;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;JJ",
            "Lcom/facebook/ads/redexgen/X/GY;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98704
    .local p1, "responseHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v6, p0

    new-instance v9, Lcom/facebook/ads/redexgen/X/90;

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-object/from16 v10, p1

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/90;-><init>(Lcom/facebook/ads/redexgen/X/nl;JJ)V

    .line 98705
    .local v2, "extractorInput":Lcom/facebook/ads/redexgen/X/lN;
    iput-object v9, v6, Lcom/facebook/ads/redexgen/X/mR;->A01:Lcom/facebook/ads/redexgen/X/lN;

    .line 98706
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    if-eqz v0, :cond_0

    .line 98707
    return-void

    .line 98708
    :cond_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A02:Lcom/facebook/ads/redexgen/X/Gb;

    move-object/from16 v1, p3

    move-object/from16 v4, p2

    invoke-interface {v0, v4, v1}, Lcom/facebook/ads/redexgen/X/Gb;->A5G(Landroid/net/Uri;Ljava/util/Map;)[Lcom/facebook/ads/redexgen/X/GX;

    move-result-object v5

    .line 98709
    .local v5, "extractors":[Lcom/facebook/ads/redexgen/X/GX;
    array-length v1, v5

    const/4 v8, 0x0

    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 98710
    aget-object v0, v5, v8

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    .line 98711
    :goto_0
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    sget-object v2, Lcom/facebook/ads/redexgen/X/mR;->A04:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 98712
    :cond_1
    array-length v7, v5

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_7

    aget-object v1, v5, v3

    .line 98713
    .local v10, "extractor":Lcom/facebook/ads/redexgen/X/GX;
    :try_start_0
    invoke-interface {v1, v9}, Lcom/facebook/ads/redexgen/X/GX;->AJL(Lcom/facebook/ads/redexgen/X/lN;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 98714
    iput-object v1, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    goto :goto_4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98715
    :cond_2
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->A8f()J

    move-result-wide v1

    cmp-long v0, v1, v11

    if-nez v0, :cond_4

    goto :goto_2

    :catch_0
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->A8f()J

    move-result-wide v1

    cmp-long v0, v1, v11

    if-nez v0, :cond_4

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 98716
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->AI1()V

    .line 98717
    .end local v10    # "extractor":Lcom/facebook/ads/redexgen/X/GX;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 98718
    :cond_4
    const/4 v0, 0x0

    goto :goto_3

    :goto_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    if-nez v0, :cond_5

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->A8f()J

    move-result-wide v1

    cmp-long v0, v1, v11

    if-nez v0, :cond_6

    :cond_5
    const/4 v8, 0x1

    :cond_6
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 98719
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->AI1()V

    .line 98720
    :cond_7
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/mR;->A04:[Ljava/lang/String;

    const-string v1, "617axDRVtVCpohDeNzS2wwDVGnqnMQm6"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "irS2jSLrtgJgNTyuX8VyAPoURNJ9oGo8"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    move-object/from16 v0, p8

    invoke-interface {v3, v0}, Lcom/facebook/ads/redexgen/X/GX;->AA4(Lcom/facebook/ads/redexgen/X/GY;)V

    .line 98721
    return-void

    .line 98722
    :catchall_0
    move-exception v3

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    if-nez v0, :cond_9

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->A8f()J

    move-result-wide v1

    cmp-long v0, v1, v11

    if-nez v0, :cond_a

    :cond_9
    const/4 v8, 0x1

    :cond_a
    invoke-static {v8}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 98723
    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/90;->AI1()V

    .line 98724
    throw v3

    .line 98725
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x18

    const/16 v1, 0x22

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 98726
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/4a;->A0s([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x37

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/mR;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98727
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    new-instance v0, Lcom/facebook/ads/redexgen/X/m9;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/m9;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    throw v0
.end method

.method public final AGc(Lcom/facebook/ads/redexgen/X/Gt;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/GX;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A01:Lcom/facebook/ads/redexgen/X/lN;

    .line 98729
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/lN;

    invoke-interface {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/GX;->AGb(Lcom/facebook/ads/redexgen/X/lN;Lcom/facebook/ads/redexgen/X/Gt;)I

    move-result v0

    .line 98730
    return v0
.end method

.method public final AGr()V
    .locals 2

    .line 98731
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 98732
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/GX;->AGr()V

    .line 98733
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    .line 98734
    :cond_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/mR;->A01:Lcom/facebook/ads/redexgen/X/lN;

    .line 98735
    return-void
.end method

.method public final AIM(JJ)V
    .locals 1

    .line 98736
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/mR;->A00:Lcom/facebook/ads/redexgen/X/GX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/GX;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/GX;->AIM(JJ)V

    .line 98737
    return-void
.end method
