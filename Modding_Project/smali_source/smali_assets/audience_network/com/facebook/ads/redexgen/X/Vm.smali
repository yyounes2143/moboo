.class public final Lcom/facebook/ads/redexgen/X/Vm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Tu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Vn;,
        Lcom/facebook/ads/redexgen/X/Ty;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/Tu<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/Tm;

.field public A01:Lcom/facebook/ads/redexgen/X/Tm;

.field public A02:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/Vm<",
            "TT;>.RecordFileBasedFetch;>;"
        }
    .end annotation
.end field

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/Tl;

.field public final A05:Lcom/facebook/ads/redexgen/X/U1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2128
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EKA8QeB4steRJ5RPBpFUjw3mjvi5"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "fve4ITv79qbm2xvzEK1yqXI"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "ABPapESs8CyLRtVNwfFPA7A05iROvZsV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "0Lyphf8QRYP2FOEDF4CKVyWqrMlG"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sjHSRvprFPL1Hzs2shXil"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "0UuY0i89chpuUt8804PTKlfzEuvvqf4a"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "FkeetCIpWmPLoPieiedf1X3IWnyHYH7Q"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "bw9eqk6z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Vm;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Tr;Lcom/facebook/ads/redexgen/X/Tz;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69581
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69582
    const/16 v2, 0x203

    const/4 v1, 0x4

    const/16 v0, 0x67

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/Tr;->A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Tr;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/U1;

    invoke-direct {v0, v1, p2}, Lcom/facebook/ads/redexgen/X/U1;-><init>(Lcom/facebook/ads/redexgen/X/Tr;Lcom/facebook/ads/redexgen/X/Tz;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    .line 69583
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Tr;->A05()Ljava/io/File;

    move-result-object v3

    const/16 v2, 0x1fd

    const/4 v1, 0x6

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tl;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tl;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:Lcom/facebook/ads/redexgen/X/Tl;

    .line 69584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:Lcom/facebook/ads/redexgen/X/Tl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tl;->A03()Lcom/facebook/ads/redexgen/X/Tm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Ljava/util/List;

    .line 69586
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Vm;->A05(Lcom/facebook/ads/redexgen/X/Tz;)V

    .line 69587
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69588
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vm;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x19

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
    .locals 4

    const/16 v0, 0x207

    new-array v3, v0, [B

    fill-array-data v3, :array_0

    sget-object v1, Lcom/facebook/ads/redexgen/X/Vm;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v1, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x64

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Vm;->A07:[Ljava/lang/String;

    const-string v1, "G0nCZJj0prSQWtMWq2fjymNjpmI3wJ1o"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "hmxAaa3VGXWJOtMylrC9mnhyviZ0JnjG"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Vm;->A06:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x44t
        0x66t
        0x69t
        0x27t
        0x68t
        0x69t
        0x6bt
        0x7et
        0x27t
        0x63t
        0x62t
        0x6bt
        0x62t
        0x73t
        0x62t
        0x27t
        0x64t
        0x72t
        0x75t
        0x74t
        0x68t
        0x75t
        0x74t
        0x27t
        0x77t
        0x68t
        0x6et
        0x69t
        0x73t
        0x6et
        0x69t
        0x60t
        0x27t
        0x66t
        0x73t
        0x27t
        0x73t
        0x6ft
        0x62t
        0x27t
        0x63t
        0x66t
        0x73t
        0x66t
        0x65t
        0x66t
        0x74t
        0x62t
        0x27t
        0x74t
        0x73t
        0x66t
        0x75t
        0x73t
        0x57t
        0x61t
        0x66t
        0x67t
        0x7bt
        0x66t
        0x34t
        0x64t
        0x7bt
        0x67t
        0x7dt
        0x60t
        0x7dt
        0x7bt
        0x7at
        0x34t
        0x7dt
        0x67t
        0x34t
        0x75t
        0x60t
        0x34t
        0x3ct
        0x31t
        0x70t
        0x38t
        0x31t
        0x70t
        0x3dt
        0x38t
        0x34t
        0x75t
        0x7at
        0x70t
        0x34t
        0x66t
        0x71t
        0x77t
        0x7bt
        0x66t
        0x70t
        0x34t
        0x72t
        0x7dt
        0x78t
        0x71t
        0x34t
        0x67t
        0x71t
        0x65t
        0x61t
        0x71t
        0x7at
        0x77t
        0x71t
        0x34t
        0x67t
        0x60t
        0x75t
        0x66t
        0x60t
        0x67t
        0x34t
        0x75t
        0x60t
        0x34t
        0x3ct
        0x31t
        0x70t
        0x38t
        0x31t
        0x70t
        0x3dt
        0x2et
        0x34t
        0x70t
        0x75t
        0x60t
        0x75t
        0x34t
        0x7ct
        0x75t
        0x67t
        0x34t
        0x64t
        0x66t
        0x7bt
        0x76t
        0x75t
        0x76t
        0x78t
        0x6dt
        0x34t
        0x76t
        0x71t
        0x71t
        0x7at
        0x34t
        0x78t
        0x7bt
        0x67t
        0x60t
        0x1ct
        0x2at
        0x2dt
        0x2ct
        0x30t
        0x2dt
        0x7ft
        0x2ft
        0x30t
        0x2ct
        0x36t
        0x2bt
        0x36t
        0x30t
        0x31t
        0x7ft
        0x36t
        0x2ct
        0x7ft
        0x3et
        0x2bt
        0x7ft
        0x77t
        0x7at
        0x3bt
        0x73t
        0x7at
        0x3bt
        0x76t
        0x73t
        0x7ft
        0x3dt
        0x2at
        0x2bt
        0x7ft
        0x2dt
        0x3at
        0x3ct
        0x30t
        0x2dt
        0x3bt
        0x7ft
        0x39t
        0x36t
        0x33t
        0x3at
        0x7ft
        0x2ct
        0x3at
        0x2et
        0x2at
        0x3at
        0x31t
        0x3ct
        0x3at
        0x7ft
        0x30t
        0x31t
        0x33t
        0x26t
        0x7ft
        0x37t
        0x3et
        0x2ct
        0x7ft
        0x39t
        0x36t
        0x33t
        0x3at
        0x7ft
        0x7at
        0x3bt
        0x65t
        0x7ft
        0x3bt
        0x3et
        0x2bt
        0x3et
        0x7ft
        0x37t
        0x3et
        0x2ct
        0x7ft
        0x2ft
        0x2dt
        0x30t
        0x3dt
        0x3et
        0x3dt
        0x33t
        0x26t
        0x7ft
        0x3dt
        0x3at
        0x3at
        0x31t
        0x7ft
        0x33t
        0x30t
        0x2ct
        0x2bt
        0x61t
        0x46t
        0x4et
        0x4bt
        0x42t
        0x43t
        0x7t
        0x53t
        0x48t
        0x7t
        0x46t
        0x43t
        0x43t
        0x7t
        0x43t
        0x46t
        0x53t
        0x46t
        0x7t
        0x53t
        0x48t
        0x7t
        0x4bt
        0x48t
        0x40t
        0x8t
        0x2ft
        0x27t
        0x22t
        0x2bt
        0x2at
        0x6et
        0x3at
        0x21t
        0x6et
        0x2dt
        0x22t
        0x2bt
        0x2ft
        0x3ct
        0x6et
        0x2at
        0x2ft
        0x3at
        0x2ft
        0x2ct
        0x2ft
        0x3dt
        0x2bt
        0xbt
        0x2ct
        0x24t
        0x21t
        0x28t
        0x29t
        0x6dt
        0x39t
        0x22t
        0x6dt
        0x2bt
        0x28t
        0x39t
        0x2et
        0x25t
        0x6dt
        0x29t
        0x2ct
        0x39t
        0x2ct
        0x6dt
        0x2bt
        0x3ft
        0x22t
        0x20t
        0x6dt
        0x21t
        0x22t
        0x2at
        0x66t
        0x41t
        0x49t
        0x4ct
        0x45t
        0x44t
        0x0t
        0x54t
        0x4ft
        0x0t
        0x47t
        0x45t
        0x54t
        0x0t
        0x52t
        0x45t
        0x43t
        0x4ft
        0x52t
        0x44t
        0x0t
        0x43t
        0x4ft
        0x55t
        0x4et
        0x54t
        0x49t
        0x6et
        0x66t
        0x63t
        0x6at
        0x6bt
        0x2ft
        0x7bt
        0x60t
        0x2ft
        0x7at
        0x7ft
        0x6bt
        0x6et
        0x7bt
        0x6at
        0x2ft
        0x69t
        0x66t
        0x63t
        0x6at
        0x2ft
        0x7ct
        0x6at
        0x7et
        0x7at
        0x6at
        0x61t
        0x6ct
        0x6at
        0x30t
        0x7t
        0x1t
        0xdt
        0x10t
        0x6t
        0x24t
        0xbt
        0xet
        0x7t
        0x20t
        0x3t
        0x11t
        0x7t
        0x6t
        0x30t
        0x7t
        0x1t
        0xdt
        0x10t
        0x6t
        0x26t
        0x3t
        0x16t
        0x3t
        0x0t
        0x3t
        0x11t
        0x7t
        0x42t
        0x1t
        0xet
        0xdt
        0x11t
        0x7t
        0x6t
        0x77t
        0x40t
        0x46t
        0x4at
        0x57t
        0x41t
        0x63t
        0x4ct
        0x49t
        0x40t
        0x67t
        0x44t
        0x56t
        0x40t
        0x41t
        0x77t
        0x40t
        0x46t
        0x4at
        0x57t
        0x41t
        0x61t
        0x44t
        0x51t
        0x44t
        0x47t
        0x44t
        0x56t
        0x40t
        0x5t
        0x4ct
        0x56t
        0x5t
        0x46t
        0x49t
        0x4at
        0x56t
        0x40t
        0x41t
        0x77t
        0x4ct
        0x49t
        0x4ct
        0x4dt
        0x55t
        0x4ct
        0x2t
        0x70t
        0x47t
        0x41t
        0x4dt
        0x50t
        0x46t
        0x64t
        0x4bt
        0x4et
        0x47t
        0x60t
        0x43t
        0x51t
        0x47t
        0x46t
        0x70t
        0x47t
        0x41t
        0x4dt
        0x50t
        0x46t
        0x66t
        0x43t
        0x56t
        0x43t
        0x40t
        0x43t
        0x51t
        0x47t
        0x2t
        0x44t
        0x47t
        0x56t
        0x41t
        0x4at
        0x46t
        0x50t
        0x57t
        0x56t
        0x4at
        0x57t
        0x1at
        0x1ft
        0xat
        0x1ft
    .end array-data
.end method

.method private A02(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69589
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    new-instance v0, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69590
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:Lcom/facebook/ads/redexgen/X/Tl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tl;->A04(Lcom/facebook/ads/redexgen/X/Tm;)V

    .line 69591
    return-void
.end method

.method private declared-synchronized A03(Lcom/facebook/ads/redexgen/X/Vn;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Vm<",
            "TT;>.RecordFileBasedFetch;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local p1, "fetch":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 69592
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Z

    if-nez v0, :cond_6

    .line 69593
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A06(Lcom/facebook/ads/redexgen/X/Vn;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 69594
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A6P()I

    move-result v0

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69595
    monitor-exit p0

    return-void

    .line 69596
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A00()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tm;->A04(Lcom/facebook/ads/redexgen/X/Tm;)I

    move-result v0

    if-nez v0, :cond_4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69597
    :try_start_2
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Vn;->A00:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ty;

    .line 69598
    .local v1, "location":Lcom/facebook/ads/redexgen/X/Ty;
    iget v1, v0, Lcom/facebook/ads/redexgen/X/Ty;->A00:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A07()I

    move-result v0

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    .line 69599
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A0D()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69600
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A02(II)V

    goto :goto_0

    .line 69601
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .restart local v1    # "location":Lcom/facebook/ads/redexgen/X/Ty;
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    .line 69602
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A00()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ty;->A00:I

    .line 69603
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A02(II)V

    .line 69604
    .end local v1    # "location":Lcom/facebook/ads/redexgen/X/Ty;
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tm;->A04(Lcom/facebook/ads/redexgen/X/Tm;)I

    move-result v0

    if-gez v0, :cond_3

    .line 69605
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69606
    :cond_3
    monitor-exit p0

    return-void

    .line 69607
    :catch_0
    move-exception v3

    .line 69608
    :try_start_3
    const/16 v2, 0x169

    const/16 v1, 0x1e

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69609
    :cond_4
    const/4 v2, 0x0

    const/16 v1, 0x36

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69610
    :cond_5
    const/16 v2, 0x1d2

    const/16 v1, 0x2b

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;)V

    throw v1

    .line 69611
    :cond_6
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 69612
    .end local p1    # "fetch":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/Vm;Lcom/facebook/ads/redexgen/X/Vn;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .line 69613
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A03(Lcom/facebook/ads/redexgen/X/Vn;)V

    return-void
.end method

.method private A05(Lcom/facebook/ads/redexgen/X/Tz;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69614
    .local v11, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    .line 69615
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v0

    const/4 v5, 0x0

    new-instance v3, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(II)V

    .line 69616
    .local v0, "recordSequenceStart":Lcom/facebook/ads/redexgen/X/Tm;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Tm;->A04(Lcom/facebook/ads/redexgen/X/Tm;)I

    move-result v0

    const/4 v4, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-lez v0, :cond_1

    .line 69617
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69618
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69619
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 69620
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 69621
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tm;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x4

    new-array v6, v0, [Ljava/lang/Object;

    aput-object v9, v6, v5

    aput-object v8, v6, v10

    aput-object v2, v6, v11

    aput-object v1, v6, v4

    .line 69622
    const/16 v2, 0x36

    const/16 v1, 0x66

    const/16 v0, 0xd

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69623
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Tz;->AHs(Ljava/lang/String;)V

    .line 69624
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69625
    :cond_0
    return-void

    .line 69626
    :cond_1
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 69627
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A0D()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 69628
    new-instance v3, Lcom/facebook/ads/redexgen/X/Tm;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v0

    invoke-direct {v3, v0, v5}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(II)V

    goto :goto_0

    .line 69629
    :cond_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69630
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69631
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A03()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 69632
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v5

    aput-object v1, v6, v10

    aput-object v0, v6, v11

    .line 69633
    const/16 v2, 0x9c

    const/16 v1, 0x65

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 69634
    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/Tz;->AHs(Ljava/lang/String;)V

    .line 69635
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    .line 69636
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    .line 69637
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A07()I

    move-result v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69638
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:Lcom/facebook/ads/redexgen/X/Tl;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tl;->A04(Lcom/facebook/ads/redexgen/X/Tm;)V

    goto :goto_0
.end method

.method private declared-synchronized A06(Lcom/facebook/ads/redexgen/X/Vn;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Vm<",
            "TT;>.RecordFileBasedFetch;)Z"
        }
    .end annotation

    .local p1, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    .local p2, "fetch":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    monitor-enter p0

    .line 69639
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 69640
    .local v0, "removed":Z
    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69641
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 69642
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A6P()I

    move-result v0

    if-lez v0, :cond_1

    .line 69643
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A01()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69644
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A01()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ty;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tm;->A05(I)Lcom/facebook/ads/redexgen/X/Tm;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69645
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tm;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69646
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/Vn;->A00()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/Tm;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69647
    .end local p1    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_1
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 69648
    .end local v0    # "removed":Z
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Vm;Lcom/facebook/ads/redexgen/X/Vn;)Z
    .locals 0

    .line 69649
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Vm;->A06(Lcom/facebook/ads/redexgen/X/Vn;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final declared-synchronized A6O([B[I)Lcom/facebook/ads/redexgen/X/Tt;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .local v11, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 69650
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Z

    if-nez v0, :cond_5

    .line 69651
    const/4 v9, 0x0

    .line 69652
    .local v0, "storageOffset":I
    const/4 v11, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69653
    .local v1, "countsOffset":I
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 69654
    .local v2, "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    const/4 v3, 0x1

    .line 69655
    .local v3, "mayHaveMoreData":Z
    :goto_0
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69656
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69657
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A03()I

    move-result v7

    .line 69658
    move-object v10, p2

    move-object v8, p1

    invoke-virtual/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/U1;->A0A(II[BI[II)Lcom/facebook/ads/redexgen/X/Tp;

    move-result-object v5

    .line 69659
    .local v4, "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/Tp;
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/To;->A00()I

    move-result v2

    .line 69660
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/To;->A01()I

    move-result v0

    sub-int/2addr v2, v0

    .line 69661
    .local v5, "fetchedRecords":I
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/To;->A02()I

    move-result v0

    add-int/2addr v9, v0

    .line 69662
    add-int/2addr v11, v2

    .line 69663
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/To;->A03()Lcom/facebook/ads/redexgen/X/Tn;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Tn;->A03:Lcom/facebook/ads/redexgen/X/Tn;

    if-ne v1, v0, :cond_0

    .line 69664
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69665
    .end local v11    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/To;->A03()Lcom/facebook/ads/redexgen/X/Tn;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Tn;->A04:Lcom/facebook/ads/redexgen/X/Tn;

    if-ne v1, v0, :cond_1

    .line 69666
    .end local v4    # "sequenceFetchResult":Lcom/facebook/ads/redexgen/X/Tp;
    .end local v5    # "fetchedRecords":I
    :goto_1
    new-instance v2, Lcom/facebook/ads/redexgen/X/Vn;

    invoke-direct {v2, p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Vn;-><init>(Lcom/facebook/ads/redexgen/X/Vm;Ljava/util/List;Z)V

    .line 69667
    .local v4, "fetch":Lcom/facebook/ads/redexgen/X/Vn;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>.RecordFileBasedFetch;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69668
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 69669
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vn;->A01()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/Vn;->A01()Lcom/facebook/ads/redexgen/X/Ty;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/Ty;->A01:I

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Tm;->A05(I)Lcom/facebook/ads/redexgen/X/Tm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    goto :goto_2

    .line 69670
    :cond_1
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/Tp;->A01()Lcom/facebook/ads/redexgen/X/To;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/To;->A03()Lcom/facebook/ads/redexgen/X/Tn;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Tn;->A05:Lcom/facebook/ads/redexgen/X/Tn;

    if-ne v1, v0, :cond_3

    .line 69671
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A08()I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    .line 69672
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne v1, v0, :cond_2

    .line 69673
    const/4 v3, 0x0

    .line 69674
    goto :goto_1

    .line 69675
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(II)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    goto/16 :goto_0

    .line 69676
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/Tm;->A05(I)Lcom/facebook/ads/redexgen/X/Tm;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A01:Lcom/facebook/ads/redexgen/X/Tm;

    goto/16 :goto_0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69677
    :cond_4
    :goto_2
    monitor-exit p0

    return-object v2

    .line 69678
    .end local v0    # "storageOffset":I
    .end local v1    # "countsOffset":I
    .end local v2    # "individualFileFetches":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/eventstorage/record/FileSequenceFetchResult;>;"
    .end local v3    # "mayHaveMoreData":Z
    :catch_0
    move-exception v3

    .line 69679
    :try_start_2
    const/16 v2, 0x132

    const/16 v1, 0x1d

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69680
    :cond_5
    const/16 v2, 0x187

    const/16 v1, 0x24

    const/16 v0, 0x7b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69681
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vm;
    .end local p1    # null:[B
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A8k()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 69682
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Z

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69683
    .local v0, "count":I
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A09()I

    move-result v2

    .line 69684
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A02()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v0

    if-ne v1, v0, :cond_0

    .line 69685
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A00:Lcom/facebook/ads/redexgen/X/Tm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tm;->A03()I

    move-result v0

    sub-int/2addr v2, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69686
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :cond_0
    monitor-exit p0

    return v2

    .line 69687
    :catch_0
    move-exception v3

    .line 69688
    :try_start_2
    const/16 v2, 0x14f

    const/16 v1, 0x1a

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69689
    :cond_1
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69690
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AJW([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .local v3, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 69691
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Z

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69692
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/U1;->A0C([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69693
    monitor-exit p0

    return-void

    .line 69694
    .end local v3    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catch_0
    move-exception v3

    .line 69695
    :try_start_2
    const/16 v2, 0x101

    const/16 v1, 0x19

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69696
    :cond_0
    const/16 v2, 0x1ab

    const/16 v1, 0x27

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 69697
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vm;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clear()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/U3;
        }
    .end annotation

    .local v3, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 69698
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A0B()V

    .line 69699
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->A06()I

    move-result v1

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A02(II)V

    .line 69700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69701
    monitor-exit p0

    return-void

    .line 69702
    :catch_0
    move-exception v3

    .line 69703
    :try_start_1
    const/16 v2, 0x11a

    const/16 v1, 0x18

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Vm;->A00(III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69704
    .end local v3    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    .end local v0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .local p0, "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    monitor-enter p0

    .line 69705
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Z

    if-eqz v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69706
    monitor-exit p0

    return-void

    .line 69707
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A03:Z

    .line 69708
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A02:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69709
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A04:Lcom/facebook/ads/redexgen/X/Tl;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Tl;->close()V

    .line 69710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Vm;->A05:Lcom/facebook/ads/redexgen/X/U1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/U1;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69711
    monitor-exit p0

    return-void

    .line 69712
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Vm;, "Lcom/facebook/ads/internal/eventstorage/record/RecordFileBasedRecordDatabase<TT;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
