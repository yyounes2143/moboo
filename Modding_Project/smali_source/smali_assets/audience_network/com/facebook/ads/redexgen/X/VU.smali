.class public final Lcom/facebook/ads/redexgen/X/VU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/VT;
    }
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;

.field public static final A0A:Lcom/facebook/ads/redexgen/X/XS;

.field public static final A0B:Ljava/util/concurrent/Executor;

.field public static final A0C:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/VY;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/VT;

.field public A03:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/O2;

.field public final A05:Lcom/facebook/ads/redexgen/X/dL;

.field public final A06:Lcom/facebook/ads/redexgen/X/VV;

.field public final A07:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2095
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gkSyaXwR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "2VU3Nz3voiV1lmdRee4U2QJOpqB0EmXx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "l2PJ1mhNLKomP6h8XAPCJTvwOfm7DNfm"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "U14uMoZpedA5MoqMp8wF"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZGFJtzG5houIZuhA5wVIi53yZAjLLlX2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "TKuU0S0TRmpOZ7a0gUh222TH0KiJMCsX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ntgwe7QRVjptK5Vt0gMbvLxTukJluaCr"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "4nIPbhAhAn1Dg8Q4wgXTfE5Yoh5xfpBP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/VU;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/VU;->A0B()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/XS;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/XS;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VU;->A0A:Lcom/facebook/ads/redexgen/X/XS;

    .line 2096
    sget-object v0, Lcom/facebook/ads/redexgen/X/VU;->A0A:Lcom/facebook/ads/redexgen/X/XS;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newCachedThreadPool(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VU;->A0B:Ljava/util/concurrent/Executor;

    .line 2097
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/VU;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;)V
    .locals 1

    .line 69217
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/O3;->A00(Lcom/facebook/ads/redexgen/X/cu;)Lcom/facebook/ads/redexgen/X/O2;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/VU;-><init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O2;)V

    .line 69218
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/dL;Lcom/facebook/ads/redexgen/X/O2;)V
    .locals 2

    .line 69219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69220
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69221
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:J

    .line 69222
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69223
    invoke-static {}, Lcom/facebook/ads/redexgen/X/VV;->A00()Lcom/facebook/ads/redexgen/X/VV;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A06:Lcom/facebook/ads/redexgen/X/VV;

    .line 69224
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/VZ;->A01(Lcom/facebook/ads/redexgen/X/SQ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A07:Ljava/lang/String;

    .line 69225
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/VU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    .line 69226
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/VU;)J
    .locals 1

    .line 69227
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/VU;J)J
    .locals 0

    .line 69228
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/VU;->A00:J

    return-wide p1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/dL;
    .locals 0

    .line 69229
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    return-object p0
.end method

.method private A03(JLcom/facebook/ads/redexgen/X/VR;)Lcom/facebook/ads/redexgen/X/Pe;
    .locals 1

    .line 69230
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pe;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/facebook/ads/redexgen/X/Pe;-><init>(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/VR;J)V

    return-object v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/VU;)Lcom/facebook/ads/redexgen/X/VV;
    .locals 0

    .line 69231
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VU;->A06:Lcom/facebook/ads/redexgen/X/VV;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/VU;JLcom/facebook/ads/redexgen/X/VR;)Lcom/facebook/ads/redexgen/X/ee;
    .locals 0

    .line 69232
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VU;->A03(JLcom/facebook/ads/redexgen/X/VR;)Lcom/facebook/ads/redexgen/X/Pe;

    move-result-object p0

    return-object p0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/VU;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x39

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/VU;)Ljava/lang/String;
    .locals 0

    .line 69233
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VU;->A07:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/VU;)Ljava/util/Map;
    .locals 0

    .line 69234
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/VU;->A03:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/VU;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    .line 69235
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VU;->A03:Ljava/util/Map;

    return-object p1
.end method

.method private A0A()V
    .locals 6

    .line 69236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ev;->A0A(Lcom/facebook/ads/redexgen/X/SQ;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 69237
    .end local v0
    :cond_0
    return-void

    .line 69238
    :cond_1
    const/16 v2, 0x8

    const/4 v1, 0x5

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 69239
    .local v0, "ex":Lcom/facebook/ads/redexgen/X/Sw;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/Sw;->A05(I)V

    .line 69240
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69241
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v4

    sget v3, Lcom/facebook/ads/redexgen/X/Sv;->A1x:I

    .line 69242
    const/16 v2, 0x56

    const/4 v1, 0x7

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 69243
    return-void
.end method

.method public static A0B()V
    .locals 1

    const/16 v0, 0x6e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/VU;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x6ct
        0x6bt
        0x71t
        -0x63t
        0x6ft
        -0x63t
        -0x64t
        0x73t
        -0x20t
        -0xft
        -0x11t
        -0x15t
        -0x13t
        -0x19t
        -0x10t
        -0x13t
        -0x17t
        -0xet
        -0x8t
        0x3t
        -0xat
        -0x17t
        -0xbt
        -0x7t
        -0x17t
        -0x9t
        -0x8t
        0x3t
        -0x13t
        -0x18t
        -0x7et
        -0x54t
        0x59t
        -0x75t
        -0x79t
        0x73t
        0x59t
        -0x3et
        -0x3dt
        -0x6ct
        -0x46t
        -0x43t
        -0x40t
        -0x40t
        -0x6ct
        -0x1at
        -0x27t
        -0x29t
        -0x27t
        -0x23t
        -0x16t
        -0x27t
        -0x28t
        -0x27t
        -0x6t
        -0x55t
        -0x2ft
        -0xct
        -0x9t
        -0x9t
        -0x55t
        -0x10t
        -0x3t
        -0x3t
        -0x6t
        -0x3t
        -0x55t
        -0x12t
        -0x6t
        -0x11t
        -0x10t
        -0x55t
        -0x1at
        -0x50t
        -0x2t
        -0x18t
        -0x55t
        -0x50t
        -0x2t
        -0x21t
        -0x23t
        -0x1at
        -0x23t
        -0x16t
        -0x1ft
        -0x25t
        -0x39t
        -0x42t
        -0x33t
        -0x30t
        -0x38t
        -0x35t
        -0x3ct
        0xat
        0xbt
        -0x1et
        0x5t
        0x8t
        0x8t
        -0x1ct
        0xbt
        0xbt
        0x7t
        -0x23t
        -0x21t
        -0x24t
        -0x1dt
        -0x2at
        -0x2ft
        -0x2et
    .end array-data
.end method

.method private A0C(ILjava/lang/String;)V
    .locals 6

    const/16 v2, 0x25

    const/16 v1, 0x10

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/16 v1, 0xa

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/VF;->A05(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69244
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 69245
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/4 v0, 0x1

    aput-object p2, v3, v0

    const/16 v2, 0x35

    const/16 v1, 0x1a

    const/16 v0, 0x52

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69246
    invoke-static {v5, v0}, Lcom/facebook/ads/redexgen/X/VF;->A04(Ljava/lang/String;Ljava/lang/String;)V

    .line 69247
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 1

    .line 69248
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A02:Lcom/facebook/ads/redexgen/X/VT;

    if-eqz v0, :cond_0

    .line 69249
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A02:Lcom/facebook/ads/redexgen/X/VT;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/VT;->ADB(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 69250
    :cond_0
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 1

    .line 69251
    new-instance v0, Lcom/facebook/ads/redexgen/X/PX;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/PX;-><init>(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 69252
    return-void
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/VU;)V
    .locals 0

    .line 69253
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/VU;->A0A()V

    return-void
.end method

.method public static synthetic A0G(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 0

    .line 69254
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VU;->A0D(Lcom/facebook/ads/redexgen/X/V1;)V

    return-void
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/V1;)V
    .locals 0

    .line 69255
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VU;->A0E(Lcom/facebook/ads/redexgen/X/V1;)V

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 0

    .line 69256
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VU;->A0L(Lcom/facebook/ads/redexgen/X/PW;)V

    return-void
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/VU;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V
    .locals 0

    .line 69257
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/VU;->A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    return-void
.end method

.method public static synthetic A0K(Lcom/facebook/ads/redexgen/X/VU;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V
    .locals 0

    .line 69258
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/VU;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    return-void
.end method

.method private A0L(Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 3

    .line 69259
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A02:Lcom/facebook/ads/redexgen/X/VT;

    if-eqz v0, :cond_1

    .line 69260
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A02:Lcom/facebook/ads/redexgen/X/VT;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/VT;->AFO(Lcom/facebook/ads/redexgen/X/PW;)V

    .line 69261
    :cond_0
    :goto_0
    return-void

    .line 69262
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PW;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69263
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PW;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v2

    .line 69265
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PW;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69266
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/PW;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TE;->A0B()Ljava/lang/String;

    move-result-object v0

    .line 69267
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0D(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private A0M(Lcom/facebook/ads/redexgen/X/PW;)V
    .locals 1

    .line 69268
    new-instance v0, Lcom/facebook/ads/redexgen/X/Pb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pb;-><init>(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/PW;)V

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A00(Ljava/lang/Runnable;)V

    .line 69269
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A2W(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A06()Lcom/facebook/ads/redexgen/X/SW;

    move-result-object v0

    .line 69271
    .local v0, "syncModule":Lcom/facebook/ads/redexgen/X/SW;
    if-eqz v0, :cond_0

    .line 69272
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/SW;->A6V()V

    .line 69273
    .end local v0    # "syncModule":Lcom/facebook/ads/redexgen/X/SW;
    :cond_0
    return-void
.end method

.method private A0N(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V
    .locals 11

    .line 69274
    move-object v0, p0

    :try_start_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VU;->A06:Lcom/facebook/ads/redexgen/X/VV;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2, v1, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/VV;->A07(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;J)Lcom/facebook/ads/redexgen/X/VX;

    move-result-object v5

    .line 69275
    .local v0, "serverResponse":Lcom/facebook/ads/redexgen/X/VX;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/VX;->A00()Lcom/facebook/ads/redexgen/X/TE;

    move-result-object v6

    .line 69276
    .local p1, "placement":Lcom/facebook/ads/redexgen/X/TE;
    if-eqz v6, :cond_2

    .line 69277
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A0V(Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/U7;

    move-result-object v2

    .line 69278
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A0A()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/U7;->A2y(Ljava/lang/String;)V

    .line 69279
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A0x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69280
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A08()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69281
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A08()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/TO;->A04(Lcom/facebook/ads/redexgen/X/cu;Ljava/lang/String;)V

    .line 69282
    :cond_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/U7;->A0y(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69283
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A0D()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69284
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69285
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A02()Lcom/facebook/ads/redexgen/X/cu;

    move-result-object v2

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A0D()Ljava/lang/String;

    move-result-object v1

    .line 69286
    invoke-static {v2, v1}, Lcom/facebook/ads/redexgen/X/TO;->A05(Lcom/facebook/ads/redexgen/X/cu;Ljava/lang/String;)V

    .line 69287
    :cond_1
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v1

    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/Su;->ABq()V

    .line 69288
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VU;->A04:Lcom/facebook/ads/redexgen/X/O2;

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A07()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/O2;->A0N(Ljava/lang/String;)V

    .line 69289
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v1

    .line 69290
    .local v2, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TF;->A0B()J

    move-result-wide v1

    .line 69291
    invoke-static {v1, v2, p4}, Lcom/facebook/ads/redexgen/X/VQ;->A05(JLcom/facebook/ads/redexgen/X/VR;)V

    .line 69292
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v1, Lcom/facebook/ads/redexgen/X/VU;->A0B:Ljava/util/concurrent/Executor;

    invoke-static {v2, v1, v6}, Lcom/facebook/ads/redexgen/X/Xd;->A01(Lcom/facebook/ads/redexgen/X/dL;Ljava/util/concurrent/Executor;Lcom/facebook/ads/redexgen/X/TE;)V

    .line 69293
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x1e

    const/4 v2, 0x7

    const/4 v1, 0x0

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 69294
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Wm;->A02()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v2, v1}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/String;)V

    .line 69295
    .local v3, "reactNativeException":Lcom/facebook/ads/redexgen/X/Sw;
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Sw;->A06(I)V

    .line 69296
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Sw;->A0A(Z)V

    .line 69297
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69298
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v7

    const/16 v4, 0x4f

    const/4 v3, 0x7

    const/16 v1, 0x3f

    invoke-static {v4, v3, v1}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v1

    sget v3, Lcom/facebook/ads/redexgen/X/Sv;->A1W:I

    .line 69299
    invoke-interface {v7, v1, v3, v2}, Lcom/facebook/ads/redexgen/X/Su;->ABZ(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 69300
    .end local v2    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    .end local v3    # "reactNativeException":Lcom/facebook/ads/redexgen/X/Sw;
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/VS;->A00:[I

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/VX;->A01()Lcom/facebook/ads/redexgen/X/VW;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/VW;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 69301
    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->UNKNOWN_RESPONSE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69302
    .end local v2
    .local p2, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69303
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69304
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v5

    .line 69305
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 69306
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 69307
    move-object v8, p1

    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 69308
    invoke-static {v3, p1}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VU;->A0E(Lcom/facebook/ads/redexgen/X/V1;)V

    goto/16 :goto_3

    .line 69309
    :pswitch_0
    check-cast v5, Lcom/facebook/ads/redexgen/X/PV;

    .line 69310
    .local v2, "serverResponseError":Lcom/facebook/ads/redexgen/X/PV;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PV;->A04()Ljava/lang/String;

    move-result-object v8

    .line 69311
    .local v3, "errorMsg":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PV;->A03()I

    move-result v2

    sget-object v1, Lcom/facebook/ads/internal/protocol/AdErrorType;->ERROR_MESSAGE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69312
    invoke-static {v2, v1}, Lcom/facebook/ads/internal/protocol/AdErrorType;->adErrorTypeFromCode(ILcom/facebook/ads/internal/protocol/AdErrorType;)Lcom/facebook/ads/internal/protocol/AdErrorType;

    move-result-object v3

    .line 69313
    .local v4, "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/PV;->A03()I

    move-result v1

    invoke-direct {v0, v1, v8}, Lcom/facebook/ads/redexgen/X/VU;->A0C(ILjava/lang/String;)V

    .line 69314
    if-eqz v8, :cond_3

    goto :goto_0

    :cond_3
    move-object v8, p1

    .line 69315
    .local v5, "finalErrMessage":Ljava/lang/String;
    :goto_0
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69316
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v4

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69317
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v5

    .line 69318
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v7

    .line 69319
    invoke-virtual {v3}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v9

    .line 69320
    invoke-interface/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 69321
    invoke-static {v3, v8}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VU;->A0E(Lcom/facebook/ads/redexgen/X/V1;)V

    goto/16 :goto_3

    .line 69322
    .end local v2    # "serverResponseError":Lcom/facebook/ads/redexgen/X/PV;
    .end local v3    # "errorMsg":Ljava/lang/String;
    .end local v4    # "errorType":Lcom/facebook/ads/internal/protocol/AdErrorType;
    .end local v5    # "finalErrMessage":Ljava/lang/String;
    :pswitch_1
    move-object v8, v5

    check-cast v8, Lcom/facebook/ads/redexgen/X/PW;

    .line 69323
    .local v2, "ads":Lcom/facebook/ads/redexgen/X/PW;
    if-eqz v6, :cond_5

    .line 69324
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/TE;->A05()Lcom/facebook/ads/redexgen/X/TF;

    move-result-object v1

    .line 69325
    .local v3, "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/TF;->A0E()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69326
    invoke-static {p1, p4}, Lcom/facebook/ads/redexgen/X/VQ;->A07(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/VR;)V

    .line 69327
    :cond_4
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A03:Ljava/util/Map;

    if-eqz v1, :cond_6

    .line 69328
    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/VU;->A03:Ljava/util/Map;

    const/16 v3, 0xd

    const/16 v2, 0x11

    const/16 v1, 0x6b

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 69329
    .local v4, "clientChallenge":Ljava/lang/String;
    :goto_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/VX;->A02()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 69330
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 69331
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69332
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/SQ;->A03()Lcom/facebook/ads/redexgen/X/SR;

    move-result-object v3

    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69333
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/VX;->A02()Ljava/lang/String;

    move-result-object v1

    .line 69334
    invoke-interface {v3, v2, v4, v1}, Lcom/facebook/ads/redexgen/X/SR;->AHy(Lcom/facebook/ads/redexgen/X/dL;Ljava/lang/String;Ljava/lang/String;)V

    .line 69335
    .end local v3    # "adPlacementDefinition":Lcom/facebook/ads/redexgen/X/TF;
    .end local v4    # "clientChallenge":Ljava/lang/String;
    :cond_5
    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69336
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v7

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69337
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v5

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A00:J

    .line 69338
    invoke-static {v3, v4, v1, v2}, Lcom/facebook/ads/redexgen/X/XG;->A02(JJ)J

    move-result-wide v1

    .line 69339
    invoke-interface {v7, v5, v6, v1, v2}, Lcom/facebook/ads/redexgen/X/LH;->A3P(JJ)V

    .line 69340
    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/VU;->A0M(Lcom/facebook/ads/redexgen/X/PW;)V

    goto :goto_3

    .line 69341
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69342
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 69343
    .local v0, "e":Ljava/lang/Exception;
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 69344
    .local p1, "errorMessage":Ljava/lang/String;
    sget-object v4, Lcom/facebook/ads/internal/protocol/AdErrorType;->PARSER_FAILURE:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69345
    .restart local p2    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VU;->A09:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v1, v2, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0x1d

    if-eq v2, v1, :cond_7

    .line 69346
    sget-object v3, Lcom/facebook/ads/redexgen/X/VU;->A09:[Ljava/lang/String;

    const-string v2, "STn1t4NLUPoQ"

    const/4 v1, 0x0

    aput-object v2, v3, v1

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v5

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69347
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v6

    .line 69348
    invoke-virtual {v4}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v8

    .line 69349
    invoke-virtual {v4}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v10

    .line 69350
    invoke-interface/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 69351
    invoke-static {v4, v9}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/VU;->A0E(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 69352
    .end local v0    # "e":Ljava/lang/Exception;
    .end local p1    # "errorMessage":Ljava/lang/String;
    .end local p2    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :goto_3
    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V
    .locals 7

    .line 69353
    sget-object v0, Lcom/facebook/ads/redexgen/X/VU;->A0B:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Pf;

    move-object v2, p0

    move-object v6, p4

    move-wide v4, p2

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/Pf;-><init>(Lcom/facebook/ads/redexgen/X/VU;Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69354
    return-void
.end method

.method private A0P(Lcom/facebook/ads/redexgen/X/VR;)Z
    .locals 6

    .line 69355
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/VR;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v3

    .line 69356
    .local v0, "type":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/W2;->A0F(Ljava/lang/String;)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 69357
    return v5

    .line 69358
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/W2;->A0A(Ljava/lang/String;)I

    move-result v2

    .line 69359
    .local v1, "storedAdsCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A0J(Landroid/content/Context;)I

    move-result v1

    .line 69360
    .local v3, "maxStoredAdsCount":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69361
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/W2;->A09(Ljava/lang/String;)I

    move-result v0

    .line 69362
    .local v4, "currentlyLoadedAds":I
    if-ge v2, v1, :cond_1

    if-le v2, v0, :cond_3

    .line 69363
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69364
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/W2;->A00(Lcom/facebook/ads/redexgen/X/SQ;)Lcom/facebook/ads/redexgen/X/W2;

    move-result-object v1

    .line 69365
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/VR;->A06()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/internal/protocol/AdPlacementType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/W2;->A0B(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 69366
    .local v5, "storedAd":Landroid/util/Pair;
    if-eqz v3, :cond_3

    iget-object v4, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/VU;->A09:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/VU;->A09:[Ljava/lang/String;

    const-string v1, "wxWvHA1chxzz72CPhzVDSI5kTKVxH7gh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "qa9WwGn6xu1bvFfukLGFlV7cMdAOaohF"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 69367
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/VU;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    .line 69368
    const/4 v0, 0x1

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69369
    .end local v5    # "storedAd":Landroid/util/Pair;
    :cond_3
    return v5
.end method


# virtual methods
.method public final A0Q(Lcom/facebook/ads/redexgen/X/VR;)V
    .locals 9

    .line 69370
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69371
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/T5;->A0B(Lcom/facebook/ads/redexgen/X/SQ;)V

    .line 69372
    sget-object v0, Lcom/facebook/ads/redexgen/X/VU;->A0C:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    const/4 v0, 0x0

    .line 69373
    .local v0, "provider":Lcom/facebook/ads/redexgen/X/VY;
    if-eqz v0, :cond_0

    .line 69374
    const/16 v2, 0x67

    const/4 v1, 0x7

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/VU;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69375
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/U7;->A02(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_1

    .line 69376
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/VU;->A0P(Lcom/facebook/ads/redexgen/X/VR;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69377
    return-void

    .line 69378
    :cond_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/VQ;->A08(Lcom/facebook/ads/redexgen/X/VR;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 69379
    sget-object v1, Lcom/facebook/ads/redexgen/X/XU;->A06:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ph;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ph;-><init>(Lcom/facebook/ads/redexgen/X/VU;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69380
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/VQ;->A02(Lcom/facebook/ads/redexgen/X/VR;)Ljava/lang/String;

    move-result-object v2

    .line 69381
    .local v1, "lastResponse":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 69382
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/LH;->AJv()V

    .line 69383
    const-wide/16 v0, 0x0

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/facebook/ads/redexgen/X/VU;->A0O(Ljava/lang/String;JLcom/facebook/ads/redexgen/X/VR;)V

    .line 69384
    return-void

    .line 69385
    :cond_2
    sget-object v2, Lcom/facebook/ads/internal/protocol/AdErrorType;->LOAD_TOO_FREQUENTLY:Lcom/facebook/ads/internal/protocol/AdErrorType;

    .line 69386
    .local v2, "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A05:Lcom/facebook/ads/redexgen/X/dL;

    .line 69387
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/dL;->A0F()Lcom/facebook/ads/redexgen/X/LH;

    move-result-object v3

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/VU;->A01:J

    .line 69388
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/XG;->A01(J)J

    move-result-wide v4

    .line 69389
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getErrorCode()I

    move-result v6

    .line 69390
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->getDefaultErrorMessage()Ljava/lang/String;

    move-result-object v7

    .line 69391
    invoke-virtual {v2}, Lcom/facebook/ads/internal/protocol/AdErrorType;->isPublicError()Z

    move-result v8

    .line 69392
    invoke-interface/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/LH;->A3O(JILjava/lang/String;Z)V

    .line 69393
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/facebook/ads/redexgen/X/V1;->A01(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/V1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/VU;->A0E(Lcom/facebook/ads/redexgen/X/V1;)V

    .line 69394
    return-void

    .line 69395
    .end local v1    # "lastResponse":Ljava/lang/String;
    .end local v2    # "error":Lcom/facebook/ads/internal/protocol/AdErrorType;
    :cond_3
    sget-object v1, Lcom/facebook/ads/redexgen/X/VU;->A0B:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Pg;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Pg;-><init>(Lcom/facebook/ads/redexgen/X/VU;Lcom/facebook/ads/redexgen/X/VR;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 69396
    return-void
.end method

.method public final A0R(Lcom/facebook/ads/redexgen/X/VT;)V
    .locals 0

    .line 69397
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/VU;->A02:Lcom/facebook/ads/redexgen/X/VT;

    .line 69398
    return-void
.end method
