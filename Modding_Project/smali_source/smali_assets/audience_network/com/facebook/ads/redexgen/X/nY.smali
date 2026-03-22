.class public Lcom/facebook/ads/redexgen/X/nY;
.super Lcom/facebook/ads/redexgen/X/5I;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/5R;,
        Lcom/facebook/ads/androidx/media3/decoder/DecoderInputBuffer$BufferReplacementMode;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:J
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Keep track of the non-adjusted timestamp"
    .end annotation
.end field

.field public A01:J

.field public A02:Ljava/nio/ByteBuffer;

.field public A03:Ljava/nio/ByteBuffer;

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/5N;

.field public final A06:I

.field public final A07:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3184
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2IbL45Ge7WjUS4gtY5SZcZFVqhRirSld"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "R240sFcJ0pzYp66WnJ67Fmsy55XV16O5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "VUex99WpL2gwlvzu7iug41y"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "F"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "dnMRZWWEUUUJRwdjb1Aq9wn"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Gu9WZr0VQrtP2JtflAIpRNlkyE1rsTK5"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oyOSTbE54dsFuYwfZhcf3OLki3UIwS0J"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/nY;->A05()V

    const/4 v2, 0x0

    const/16 v1, 0x10

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/nY;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/2T;->A03(Ljava/lang/String;)V

    .line 3185
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 100892
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/nY;-><init>(II)V

    .line 100893
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 100894
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/5I;-><init>()V

    .line 100895
    new-instance v0, Lcom/facebook/ads/redexgen/X/5N;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/5N;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A05:Lcom/facebook/ads/redexgen/X/5N;

    .line 100896
    iput p1, p0, Lcom/facebook/ads/redexgen/X/nY;->A06:I

    .line 100897
    iput p2, p0, Lcom/facebook/ads/redexgen/X/nY;->A07:I

    .line 100898
    return-void
.end method

.method public static A02()Lcom/facebook/ads/redexgen/X/nY;
    .locals 2

    .line 100899
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/nY;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nY;-><init>(I)V

    return-object v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nY;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const-string v1, "TMnkcu7Wbc02Avo68LXTGXdgCiHDzCoJ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "32B0HSZuRu1EwrCyQNusNP3p455vxDa3"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04(I)Ljava/nio/ByteBuffer;
    .locals 4

    .line 100900
    iget v1, p0, Lcom/facebook/ads/redexgen/X/nY;->A06:I

    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 100901
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3

    .line 100902
    :cond_0
    iget v3, p0, Lcom/facebook/ads/redexgen/X/nY;->A06:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const-string v1, "Xhbg2bf7wDHhg84e2eXJTK6LXJwKWSr7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Xvqd08ordVMo4CmGxDs2k5pAuekgSSjU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const/4 v0, 0x2

    if-ne v3, v0, :cond_1

    .line 100903
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 100904
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    const/4 v1, 0x0

    .line 100905
    .local v0, "currentCapacity":I
    :goto_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/5R;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/5R;-><init>(II)V

    throw v0

    .line 100906
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/nY;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        0x20t
        0x20t
        0x28t
        0x61t
        0x2at
        0x37t
        0x20t
        0x61t
        0x2bt
        0x2at
        0x2ct
        0x20t
        0x2bt
        0x2at
        0x3dt
    .end array-data
.end method


# virtual methods
.method public A0A()V
    .locals 1

    .line 100907
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/5I;->A0A()V

    .line 100908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 100909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100910
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 100911
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 100912
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A04:Z

    .line 100913
    return-void
.end method

.method public final A0B()V
    .locals 1

    .line 100914
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 100915
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 100916
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 100917
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 100918
    :cond_1
    return-void
.end method

.method public final A0C(I)V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "data"
        }
    .end annotation

    .line 100919
    iget v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A07:I

    add-int/2addr p1, v0

    .line 100920
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    .line 100921
    .local v0, "currentData":Ljava/nio/ByteBuffer;
    if-nez v4, :cond_0

    .line 100922
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/nY;->A04(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    .line 100923
    return-void

    .line 100924
    :cond_0
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    .line 100925
    .local v1, "capacity":I
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 100926
    .local v2, "position":I
    add-int v0, v1, p1

    .line 100927
    .local v3, "requiredCapacity":I
    if-lt v2, v0, :cond_1

    .line 100928
    iput-object v4, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    .line 100929
    return-void

    .line 100930
    :cond_1
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/nY;->A04(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 100931
    .local v4, "newData":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 100932
    if-lez v1, :cond_3

    .line 100933
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 100934
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/nY;->A09:[Ljava/lang/String;

    const-string v1, "fNtiW8alSIVNhAh4w2LF63Pxxp"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 100935
    :cond_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/nY;->A02:Ljava/nio/ByteBuffer;

    .line 100936
    return-void
.end method

.method public final A0D(I)V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "supplementalData"
        }
    .end annotation

    .line 100937
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 100938
    :cond_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    .line 100939
    :goto_0
    return-void

    .line 100940
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/nY;->A03:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_0
.end method

.method public final A0E()Z
    .locals 1

    .line 100941
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/5I;->A09(I)Z

    move-result v0

    return v0
.end method
