.class public Lcom/facebook/ads/redexgen/X/nc;
.super Lcom/facebook/ads/redexgen/X/4z;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/datasource/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/56;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nc;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/56;II)V
    .locals 1

    .line 100948
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/nc;->A03(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(I)V

    .line 100949
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nc;->A01:Lcom/facebook/ads/redexgen/X/56;

    .line 100950
    iput p3, p0, Lcom/facebook/ads/redexgen/X/nc;->A00:I

    .line 100951
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/56;II)V
    .locals 1

    .line 100952
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/nc;->A03(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Ljava/lang/Throwable;I)V

    .line 100953
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nc;->A01:Lcom/facebook/ads/redexgen/X/56;

    .line 100954
    iput p4, p0, Lcom/facebook/ads/redexgen/X/nc;->A00:I

    .line 100955
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/56;II)V
    .locals 1

    .line 100956
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/nc;->A03(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Ljava/lang/String;I)V

    .line 100957
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/nc;->A01:Lcom/facebook/ads/redexgen/X/56;

    .line 100958
    iput p4, p0, Lcom/facebook/ads/redexgen/X/nc;->A00:I

    .line 100959
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/56;II)V
    .locals 1

    .line 100960
    invoke-static {p4, p5}, Lcom/facebook/ads/redexgen/X/nc;->A03(II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/4z;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 100961
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/nc;->A01:Lcom/facebook/ads/redexgen/X/56;

    .line 100962
    iput p5, p0, Lcom/facebook/ads/redexgen/X/nc;->A00:I

    .line 100963
    return-void
.end method

.method public static A03(II)I
    .locals 1

    .line 100964
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100965
    const/16 p0, 0x7d1

    .line 100966
    :cond_0
    return p0
.end method

.method public static A04(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/56;I)Lcom/facebook/ads/redexgen/X/nc;
    .locals 4

    .line 100967
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 100968
    .local v0, "message":Ljava/lang/String;
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 100969
    const/16 v1, 0x7d2

    .line 100970
    .local v1, "errorCode":I
    .restart local v1    # "errorCode":I
    :goto_0
    const/16 v0, 0x7d7

    if-ne v1, v0, :cond_0

    .line 100971
    new-instance v0, Lcom/facebook/ads/redexgen/X/9h;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/9h;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/56;)V

    .line 100972
    :goto_1
    return-object v0

    .line 100973
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/nc;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/facebook/ads/redexgen/X/nc;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/56;II)V

    goto :goto_1

    .line 100974
    .end local v1    # "errorCode":I
    :cond_1
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_2

    .line 100975
    const/16 v1, 0x3ec

    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 100976
    .end local v1    # "errorCode":I
    :cond_2
    if-eqz v1, :cond_3

    .line 100977
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/iY;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100978
    const/16 v1, 0x7d7

    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 100979
    .end local v1    # "errorCode":I
    :cond_3
    const/16 v1, 0x7d1

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/nc;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nc;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x27t
        -0x1et
        -0x25t
        -0x29t
        -0x18t
        -0x16t
        -0x25t
        -0x12t
        -0x16t
        -0x5ct
        -0x60t
        -0x1ct
        -0x1bt
        -0x16t
        -0x6at
        -0x1at
        -0x25t
        -0x18t
        -0x1dt
        -0x21t
        -0x16t
        -0x16t
        -0x25t
        -0x26t
        -0x5ct
        -0x60t
    .end array-data
.end method
