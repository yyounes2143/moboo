.class public final Lcom/facebook/ads/redexgen/X/ir;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ln;


# static fields
.field public static A0B:[B

.field public static A0C:[Ljava/lang/String;

.field public static final A0D:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A00:J

.field public A01:J

.field public A02:Lcom/facebook/ads/redexgen/X/Lk;

.field public A03:Z

.field public final A04:Lcom/facebook/ads/redexgen/X/iw;

.field public final A05:Lcom/facebook/ads/redexgen/X/Lt;

.field public final A06:Lcom/facebook/ads/redexgen/X/M6;

.field public final A07:Ljava/io/File;

.field public final A08:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/facebook/ads/redexgen/X/Lm;",
            ">;>;"
        }
    .end annotation
.end field

.field public final A09:Ljava/util/Random;

.field public final A0A:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2998
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "bCiwVY89t3fNm3gVh5Cta1r1ex617UD6"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2pbQHFWCVx6Uhmp9EyO9uCwpcu4x9Dl0"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "32tJ4jyYWOzcf72n5Wgg62"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "i6oCPG91V"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "KagoX429g1hrk2zqYLocuLLyf0lslURo"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "DhZpyS71VRHuUy7Qk1AUkZm91VAyIgrZ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "oeCQOWeJcqbtbEq5qioytyhoePvaJg5Z"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ir;->A07()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ir;->A0D:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86731
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;[BZ)V

    .line 86732
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;Lcom/facebook/ads/redexgen/X/4m;[BZZ)V
    .locals 7

    .line 86733
    new-instance v1, Lcom/facebook/ads/redexgen/X/M6;

    move v5, p5

    move-object v4, p4

    move-object v2, p3

    move v6, p6

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/M6;-><init>(Lcom/facebook/ads/redexgen/X/4m;Ljava/io/File;[BZZ)V

    .line 86734
    if-eqz v2, :cond_0

    if-nez v6, :cond_0

    .line 86735
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lt;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/Lt;-><init>(Lcom/facebook/ads/redexgen/X/4m;)V

    .line 86736
    :goto_0
    invoke-direct {p0, v3, p2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;Lcom/facebook/ads/redexgen/X/M6;Lcom/facebook/ads/redexgen/X/Lt;)V

    .line 86737
    return-void

    .line 86738
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;Lcom/facebook/ads/redexgen/X/M6;Lcom/facebook/ads/redexgen/X/Lt;)V
    .locals 4

    .line 86739
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86740
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/ir;->A0H(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86741
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    .line 86742
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ir;->A04:Lcom/facebook/ads/redexgen/X/iw;

    .line 86743
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    .line 86744
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    .line 86745
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A08:Ljava/util/HashMap;

    .line 86746
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A09:Ljava/util/Random;

    .line 86747
    invoke-interface {p2}, Lcom/facebook/ads/redexgen/X/iw;->AHz()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A0A:Z

    .line 86748
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A01:J

    .line 86749
    new-instance v3, Landroid/os/ConditionVariable;

    invoke-direct {v3}, Landroid/os/ConditionVariable;-><init>()V

    .line 86750
    .local v0, "conditionVariable":Landroid/os/ConditionVariable;
    const/16 v2, 0x32

    const/16 v1, 0x19

    const/16 v0, 0x1c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/MD;

    invoke-direct {v0, p0, v1, v3}, Lcom/facebook/ads/redexgen/X/MD;-><init>(Lcom/facebook/ads/redexgen/X/ir;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    .line 86751
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/MD;->start()V

    .line 86752
    invoke-virtual {v3}, Landroid/os/ConditionVariable;->block()V

    .line 86753
    return-void

    .line 86754
    .end local v0    # "conditionVariable":Landroid/os/ConditionVariable;
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x4

    const/16 v1, 0x2e

    const/16 v0, 0x9

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;[BZ)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 86755
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v5, p4

    move-object v4, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/ir;-><init>(Ljava/io/File;Lcom/facebook/ads/redexgen/X/iw;Lcom/facebook/ads/redexgen/X/4m;[BZZ)V

    .line 86756
    return-void
.end method

.method public static A00(Ljava/io/File;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86757
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    move-result-wide v3

    .line 86758
    .local v0, "uid":J
    const-wide/high16 v1, -0x8000000000000000L

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    .line 86759
    :goto_0
    const/16 v0, 0x10

    invoke-static {v1, v2, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v3

    .line 86760
    .local v2, "hexUid":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x4

    const/16 v0, 0x6b

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86761
    .local v3, "hexUidFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86762
    return-wide v1

    .line 86763
    :cond_0
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    goto :goto_0

    .line 86764
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/16 v1, 0x1b

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static A01(Ljava/lang/String;)J
    .locals 2

    .line 86765
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v0, 0x10

    invoke-static {v1, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static A02([Ljava/io/File;)J
    .locals 7

    .line 86766
    array-length v6, p0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v4, p0, v5

    .line 86767
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 86768
    .local v3, "fileName":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86769
    :try_start_0
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ir;->A01(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86770
    .local v4, "e":Ljava/lang/NumberFormatException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x115

    const/16 v1, 0x14

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 86771
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 86772
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 86773
    :goto_1
    return-wide v0

    .line 86774
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/iq;
    .locals 7

    .line 86775
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v6

    .line 86776
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-nez v6, :cond_0

    .line 86777
    invoke-static {p1, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/iq;->A04(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v0

    return-object v0

    .line 86778
    :cond_0
    :goto_0
    invoke-virtual {v6, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/M4;->A04(JJ)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v5

    .line 86779
    .local v1, "span":Lcom/facebook/ads/redexgen/X/iq;
    iget-boolean v0, v5, Lcom/facebook/ads/redexgen/X/Lx;->A05:Z

    if-eqz v0, :cond_1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Lx;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v1, v5, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    .line 86780
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A06()V

    .line 86781
    goto :goto_0

    .line 86782
    :cond_1
    return-object v5
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/ir;->A0B:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const-string v1, "f7QnNjNC08rjnWmNVHuGYagSWe5Lcp9o"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "r0Bisby3rM4igG5oRpf6tXDb0tjiDQ2I"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2b

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A05()V
    .locals 8

    .line 86783
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86784
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ir;->A0F(Ljava/io/File;)V

    goto :goto_0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Lk; {:try_start_0 .. :try_end_0} :catch_0

    .line 86785
    :catch_0
    move-exception v0

    .line 86786
    .local v0, "e":Lcom/facebook/ads/redexgen/X/Lk;
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A02:Lcom/facebook/ads/redexgen/X/Lk;

    .line 86787
    return-void

    .line 86788
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/Lk;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_4

    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const-string v1, "a7bsaZYeTJGewaTpvlEBtyxkDQTMEU8W"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "kn4PmWwOChlyCy8qyQNRjkcz1fm49U24"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 86789
    .local v0, "files":[Ljava/io/File;
    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    if-nez v3, :cond_1

    .line 86790
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xc8

    const/16 v2, 0x26

    const/16 v1, 0x46

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86791
    .local v2, "message":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 86792
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A02:Lcom/facebook/ads/redexgen/X/Lk;

    .line 86793
    return-void

    .line 86794
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/ir;->A02([Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A01:J

    .line 86795
    iget-wide v6, p0, Lcom/facebook/ads/redexgen/X/ir;->A01:J

    const-wide/16 v4, -0x1

    cmp-long v1, v6, v4

    if-nez v1, :cond_2

    .line 86796
    :try_start_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/ir;->A00(Ljava/io/File;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A01:J

    goto :goto_1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 86797
    :catch_1
    move-exception v5

    .line 86798
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x66

    const/16 v2, 0x1c

    const/16 v1, 0x72

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86799
    .local v3, "message":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86800
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A02:Lcom/facebook/ads/redexgen/X/Lk;

    .line 86801
    return-void

    .line 86802
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "message":Ljava/lang/String;
    :cond_2
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A01:J

    invoke-virtual {v4, v1, v2}, Lcom/facebook/ads/redexgen/X/M6;->A0J(J)V

    .line 86803
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    .line 86804
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A01:J

    invoke-virtual {v4, v1, v2}, Lcom/facebook/ads/redexgen/X/Lt;->A06(J)V

    .line 86805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/Lt;->A05()Ljava/util/Map;

    move-result-object v4

    .line 86806
    .local v2, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-direct {p0, v1, v5, v3, v4}, Lcom/facebook/ads/redexgen/X/ir;->A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 86807
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/facebook/ads/redexgen/X/Lt;->A09(Ljava/util/Set;)V

    goto :goto_2

    .line 86808
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v5, v3, v1}, Lcom/facebook/ads/redexgen/X/ir;->A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 86809
    :goto_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M6;->A0H()V

    .line 86810
    :try_start_3
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M6;->A0I()V

    goto :goto_3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 86811
    :catch_2
    move-exception v4

    .line 86812
    .local v2, "e":Ljava/io/IOException;
    const/16 v3, 0x134

    const/16 v2, 0x19

    const/16 v1, 0x19

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86813
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    return-void

    .line 86814
    :catch_3
    move-exception v5

    .line 86815
    .restart local v2    # "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0xa4

    const/16 v2, 0x24

    const/16 v1, 0x1d

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 86816
    .restart local v3    # "message":Ljava/lang/String;
    invoke-static {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/44;->A08(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86817
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v1, v5}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A02:Lcom/facebook/ads/redexgen/X/Lk;

    .line 86818
    return-void

    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06()V
    .locals 9

    .line 86819
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 86820
    .local v0, "spansToBeRemoved":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheSpan;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->A0G()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/M4;

    .line 86821
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->A06()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/Lx;

    .line 86822
    .local v4, "span":Lcom/facebook/ads/redexgen/X/Lx;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Lx;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    iget-wide v1, v3, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    cmp-long v0, v5, v1

    if-eqz v0, :cond_1

    .line 86823
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 86824
    :cond_2
    const/4 v3, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const-string v1, "aqjjwslhzF6rAKukFAflKhlVTVCMUUBi"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "oi6ATHfePUfqMvf6S7GQLdSJgMPLAUWw"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-ge v3, v5, :cond_4

    .line 86825
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lx;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ir;->A0A(Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86826
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86827
    .end local v1    # "i":I
    :cond_4
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x14d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ir;->A0B:[B

    return-void

    :array_0
    .array-data 1
        0x6et
        0x35t
        0x29t
        0x24t
        0x63t
        0x4ct
        0x4dt
        0x56t
        0x4at
        0x47t
        0x50t
        0x2t
        0x71t
        0x4bt
        0x4ft
        0x52t
        0x4et
        0x47t
        0x61t
        0x43t
        0x41t
        0x4at
        0x47t
        0x2t
        0x4bt
        0x4ct
        0x51t
        0x56t
        0x43t
        0x4ct
        0x41t
        0x47t
        0x2t
        0x57t
        0x51t
        0x47t
        0x51t
        0x2t
        0x56t
        0x4at
        0x47t
        0x2t
        0x44t
        0x4dt
        0x4et
        0x46t
        0x47t
        0x50t
        0x18t
        0x2t
        0x72t
        0x4ft
        0x58t
        0x67t
        0x5bt
        0x56t
        0x4et
        0x52t
        0x45t
        0xdt
        0x64t
        0x5et
        0x5at
        0x47t
        0x5bt
        0x52t
        0x74t
        0x56t
        0x54t
        0x5ft
        0x52t
        0x7et
        0x59t
        0x5et
        0x43t
        0x23t
        0x4t
        0xct
        0x9t
        0x0t
        0x1t
        0x45t
        0x11t
        0xat
        0x45t
        0x6t
        0x17t
        0x0t
        0x4t
        0x11t
        0x0t
        0x45t
        0x30t
        0x2ct
        0x21t
        0x45t
        0x3t
        0xct
        0x9t
        0x0t
        0x5ft
        0x45t
        0x1ft
        0x38t
        0x30t
        0x35t
        0x3ct
        0x3dt
        0x79t
        0x2dt
        0x36t
        0x79t
        0x3at
        0x2bt
        0x3ct
        0x38t
        0x2dt
        0x3ct
        0x79t
        0x3at
        0x38t
        0x3at
        0x31t
        0x3ct
        0x79t
        0xct
        0x10t
        0x1dt
        0x63t
        0x79t
        0x6ct
        0x4bt
        0x43t
        0x46t
        0x4ft
        0x4et
        0xat
        0x5et
        0x45t
        0xat
        0x49t
        0x58t
        0x4ft
        0x4bt
        0x5et
        0x4ft
        0xat
        0x49t
        0x4bt
        0x49t
        0x42t
        0x4ft
        0xat
        0x4et
        0x43t
        0x58t
        0x4ft
        0x49t
        0x5et
        0x45t
        0x58t
        0x53t
        0x10t
        0xat
        0x70t
        0x57t
        0x5ft
        0x5at
        0x53t
        0x52t
        0x16t
        0x42t
        0x59t
        0x16t
        0x5ft
        0x58t
        0x5ft
        0x42t
        0x5ft
        0x57t
        0x5at
        0x5ft
        0x4ct
        0x53t
        0x16t
        0x55t
        0x57t
        0x55t
        0x5et
        0x53t
        0x16t
        0x5ft
        0x58t
        0x52t
        0x5ft
        0x55t
        0x53t
        0x45t
        0xct
        0x16t
        0x2bt
        0xct
        0x4t
        0x1t
        0x8t
        0x9t
        0x4dt
        0x19t
        0x2t
        0x4dt
        0x1t
        0x4t
        0x1et
        0x19t
        0x4dt
        0xet
        0xct
        0xet
        0x5t
        0x8t
        0x4dt
        0x9t
        0x4t
        0x1ft
        0x8t
        0xet
        0x19t
        0x2t
        0x1ft
        0x14t
        0x4dt
        0xbt
        0x4t
        0x1t
        0x8t
        0x1et
        0x57t
        0x4dt
        0x30t
        0x17t
        0x1ft
        0x1at
        0x13t
        0x12t
        0x56t
        0x2t
        0x19t
        0x56t
        0x4t
        0x13t
        0x1bt
        0x19t
        0x0t
        0x13t
        0x56t
        0x10t
        0x1ft
        0x1at
        0x13t
        0x56t
        0x1ft
        0x18t
        0x12t
        0x13t
        0xet
        0x56t
        0x13t
        0x18t
        0x2t
        0x4t
        0xft
        0x56t
        0x10t
        0x19t
        0x4t
        0x4ct
        0x56t
        0x38t
        0x14t
        0x19t
        0x13t
        0x1at
        0x7t
        0x18t
        0x10t
        0x11t
        0x55t
        0x20t
        0x3ct
        0x31t
        0x55t
        0x13t
        0x1ct
        0x19t
        0x10t
        0x4ft
        0x55t
        0x66t
        0x5ct
        0x58t
        0x45t
        0x59t
        0x50t
        0x76t
        0x54t
        0x56t
        0x5dt
        0x50t
        0x61t
        0x46t
        0x5dt
        0x40t
        0x5bt
        0x5ct
        0x55t
        0x12t
        0x5bt
        0x5ct
        0x56t
        0x57t
        0x4at
        0x12t
        0x54t
        0x5bt
        0x5et
        0x57t
        0x12t
        0x54t
        0x53t
        0x5bt
        0x5et
        0x57t
        0x56t
    .end array-data
.end method

.method private final declared-synchronized A08()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    monitor-enter p0

    .line 86828
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A02:Lcom/facebook/ads/redexgen/X/Lk;

    if-nez v0, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86829
    monitor-exit p0

    return-void

    .line 86830
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A02:Lcom/facebook/ads/redexgen/X/Lk;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86831
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 3

    .line 86832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A08:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 86833
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 86834
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 86835
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lm;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Lm;->AFK(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86836
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 86837
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A04:Lcom/facebook/ads/redexgen/X/iw;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Lm;->AFK(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86838
    return-void
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 6

    .line 86839
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v4

    .line 86840
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v4, :cond_0

    invoke-virtual {v4, p1}, Lcom/facebook/ads/redexgen/X/M4;->A0D(Lcom/facebook/ads/redexgen/X/Lx;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 86841
    :cond_0
    return-void

    .line 86842
    :cond_1
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ir;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ir;->A00:J

    .line 86843
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    if-eqz v0, :cond_2

    .line 86844
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A03:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 86845
    .local v1, "fileName":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/Lt;->A07(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86846
    .local v2, "e":Ljava/io/IOException;
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xee

    const/16 v1, 0x27

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 86847
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/M4;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0K(Ljava/lang/String;)V

    .line 86848
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ir;->A09(Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86849
    return-void
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/ir;)V
    .locals 0

    .line 86850
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A05()V

    return-void
.end method

.method private A0C(Lcom/facebook/ads/redexgen/X/iq;)V
    .locals 4

    .line 86851
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M4;->A08(Lcom/facebook/ads/redexgen/X/iq;)V

    .line 86852
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/ir;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/ir;->A00:J

    .line 86853
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ir;->A0D(Lcom/facebook/ads/redexgen/X/iq;)V

    .line 86854
    return-void
.end method

.method private A0D(Lcom/facebook/ads/redexgen/X/iq;)V
    .locals 6

    .line 86855
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A08:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 86856
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v5, :cond_1

    .line 86857
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v4, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v4, :cond_1

    .line 86858
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const-string v1, "Z81vyiSZneiyPRnyPjjjzGlAG4UB"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    check-cast v3, Lcom/facebook/ads/redexgen/X/Lm;

    invoke-interface {v3, p0, p1}, Lcom/facebook/ads/redexgen/X/Lm;->AFJ(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86859
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86860
    .end local v1    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A04:Lcom/facebook/ads/redexgen/X/iw;

    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Lm;->AFJ(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86861
    return-void
.end method

.method private A0E(Lcom/facebook/ads/redexgen/X/iq;Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 3

    .line 86862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A08:Ljava/util/HashMap;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 86863
    .local v0, "keyListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/Cache$Listener;>;"
    if-eqz v2, :cond_0

    .line 86864
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 86865
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lm;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lm;->AFL(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86866
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 86867
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A04:Lcom/facebook/ads/redexgen/X/iw;

    invoke-interface {v0, p0, p1, p2}, Lcom/facebook/ads/redexgen/X/Lm;->AFL(Lcom/facebook/ads/redexgen/X/Ln;Lcom/facebook/ads/redexgen/X/Lx;Lcom/facebook/ads/redexgen/X/Lx;)V

    .line 86868
    return-void
.end method

.method public static A0F(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    .line 86869
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86870
    .end local v0
    :cond_0
    return-void

    .line 86871
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x82

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 86872
    .local v0, "message":Ljava/lang/String;
    const/16 v2, 0x129

    const/16 v1, 0xb

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/44;->A05(Ljava/lang/String;Ljava/lang/String;)V

    .line 86873
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v3}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Z[",
            "Ljava/io/File;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/Ls;",
            ">;)V"
        }
    .end annotation

    .line 86874
    .local p6, "fileMetadata":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CacheFileMetadata;>;"
    move-object/from16 v6, p0

    move-object/from16 v8, p3

    if-eqz v8, :cond_0

    array-length v0, v8

    if-nez v0, :cond_2

    .line 86875
    :cond_0
    if-nez p2, :cond_1

    .line 86876
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 86877
    :cond_1
    return-void

    .line 86878
    :cond_2
    array-length v5, v8

    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_a

    aget-object v11, v8, v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x1a

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x38

    if-eq v1, v0, :cond_9

    .line 86879
    .local v12, "file":Ljava/io/File;
    sget-object v2, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const-string v1, "8aOt5QXsfRNGpIpRxoAxSAZDoaRpec1S"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "wFGX3oecQoVuPclALoyOBFGO19d1hLj7"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 86880
    .local v13, "fileName":Ljava/lang/String;
    move-object/from16 v7, p4

    if-eqz p2, :cond_4

    const/16 v0, 0x2e

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v0, -0x1

    if-ne v1, v0, :cond_4

    .line 86881
    invoke-virtual {v11}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v11, v4, v0, v7}, Lcom/facebook/ads/redexgen/X/ir;->A0G(Ljava/io/File;Z[Ljava/io/File;Ljava/util/Map;)V

    .line 86882
    .end local v6
    .end local v12    # "file":Ljava/io/File;
    .end local v13    # "fileName":Ljava/lang/String;
    .end local v14
    .end local v15
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86883
    :cond_4
    if-eqz p2, :cond_5

    .line 86884
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/M6;->A0A(Ljava/lang/String;)Z

    move-result v10

    sget-object v1, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_9

    sget-object v9, Lcom/facebook/ads/redexgen/X/ir;->A0C:[Ljava/lang/String;

    const-string v1, "SjNVVRrUmgTFjXqPeyNmbh"

    const/4 v0, 0x3

    aput-object v1, v9, v0

    const-string v1, "SAWP83LvD"

    const/4 v0, 0x4

    aput-object v1, v9, v0

    if-nez v10, :cond_3

    const/4 v9, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x6b

    invoke-static {v9, v1, v0}, Lcom/facebook/ads/redexgen/X/ir;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 86885
    :cond_5
    const-wide/16 v12, -0x1

    .line 86886
    .local v6, "length":J
    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    .line 86887
    .local v8, "lastTouchTimestamp":J
    if-eqz v7, :cond_7

    invoke-interface {v7, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Ls;

    .line 86888
    .local v14, "metadata":Lcom/facebook/ads/redexgen/X/Ls;
    :goto_2
    if-eqz v0, :cond_6

    .line 86889
    iget-wide v12, v0, Lcom/facebook/ads/redexgen/X/Ls;->A01:J

    .line 86890
    iget-wide v14, v0, Lcom/facebook/ads/redexgen/X/Ls;->A00:J

    .line 86891
    .end local v6    # "length":J
    .end local v8    # "lastTouchTimestamp":J
    .local v15, "length":J
    .local p0, "lastTouchTimestamp":J
    :cond_6
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    .line 86892
    move-object/from16 v16, v0

    invoke-static/range {v11 .. v16}, Lcom/facebook/ads/redexgen/X/iq;->A01(Ljava/io/File;JJLcom/facebook/ads/redexgen/X/M6;)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v0

    .line 86893
    .local v6, "span":Lcom/facebook/ads/redexgen/X/iq;
    if-eqz v0, :cond_8

    .line 86894
    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/ir;->A0C(Lcom/facebook/ads/redexgen/X/iq;)V

    goto :goto_1

    .line 86895
    :cond_7
    const/4 v0, 0x0

    goto :goto_2

    .line 86896
    :cond_8
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_9
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 86897
    :cond_a
    return-void
.end method

.method public static declared-synchronized A0H(Ljava/io/File;)Z
    .locals 3

    const-class v2, Lcom/facebook/ads/redexgen/X/ir;

    monitor-enter v2

    .line 86898
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/ir;->A0D:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v0

    .end local p0    # null:Ljava/io/File;
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method


# virtual methods
.method public final declared-synchronized A0I(Ljava/lang/String;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/NavigableSet<",
            "Lcom/facebook/ads/redexgen/X/Lx;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 86899
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86900
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v1

    .line 86901
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M4;->A09()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 86902
    .end local p1    # null:Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    .line 86903
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/M4;->A06()Ljava/util/TreeSet;

    move-result-object v0

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86904
    :goto_1
    monitor-exit p0

    return-object v1

    .line 86905
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    .end local p2
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A46(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    monitor-enter p0

    .line 86906
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86907
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A08()V

    .line 86908
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/M6;->A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86909
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->A0I()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86910
    monitor-exit p0

    return-void

    .line 86911
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :catch_0
    move-exception v1

    .line 86912
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86913
    .end local v0    # "e":Ljava/io/IOException;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:Lcom/facebook/ads/redexgen/X/M9;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A4x(Ljava/io/File;J)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    monitor-enter p0

    .line 86914
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    const/4 v7, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86915
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86916
    monitor-exit p0

    return-void

    .line 86917
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v0, p2, v1

    if-nez v0, :cond_2

    .line 86918
    :try_start_1
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86919
    monitor-exit p0

    return-void

    .line 86920
    .end local p1    # null:Ljava/io/File;
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    .line 86921
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/ads/redexgen/X/iq;->A02(Ljava/io/File;JLcom/facebook/ads/redexgen/X/M6;)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/iq;

    .line 86922
    .local v0, "span":Lcom/facebook/ads/redexgen/X/iq;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/ads/redexgen/X/M4;

    .line 86923
    .local v3, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Lx;->A02:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->A0B(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86924
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/M4;->A03()Lcom/facebook/ads/redexgen/X/is;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M7;->A00(Lcom/facebook/ads/redexgen/X/M8;)J

    move-result-wide v5

    .line 86925
    .local v4, "contentLength":J
    const-wide/16 v1, -0x1

    cmp-long v0, v5, v1

    if-eqz v0, :cond_3

    .line 86926
    iget-wide v2, v4, Lcom/facebook/ads/redexgen/X/Lx;->A02:J

    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    add-long/2addr v2, v0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_4

    :goto_1
    invoke-static {v7}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86927
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    if-eqz v0, :cond_5

    .line 86928
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 86929
    :cond_4
    const/4 v7, 0x0

    goto :goto_1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86930
    .local v7, "fileName":Ljava/lang/String;
    :goto_2
    :try_start_3
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ir;->A05:Lcom/facebook/ads/redexgen/X/Lt;

    iget-wide v7, v4, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    iget-wide v9, v4, Lcom/facebook/ads/redexgen/X/Lx;->A00:J

    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/Lt;->A08(Ljava/lang/String;JJ)V

    goto :goto_3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 86931
    :catch_0
    move-exception v1

    .line 86932
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 86933
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "fileName":Ljava/lang/String;
    :cond_5
    :goto_3
    invoke-direct {p0, v4}, Lcom/facebook/ads/redexgen/X/ir;->A0C(Lcom/facebook/ads/redexgen/X/iq;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 86934
    :try_start_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M6;->A0I()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 86935
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 86936
    monitor-exit p0

    return-void

    .line 86937
    :catch_1
    move-exception v1

    .line 86938
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Lk;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 86939
    .end local v0    # "span":Lcom/facebook/ads/redexgen/X/iq;
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    .end local v4    # "contentLength":J
    .end local p2    # null:J
    .end local p3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A72()J
    .locals 2

    monitor-enter p0

    .line 86940
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86941
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A00:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 86942
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A73(Ljava/lang/String;JJ)J
    .locals 15

    move-wide/from16 v11, p2

    monitor-enter p0

    .line 86943
    const-wide/16 v1, -0x1

    cmp-long v0, p4, v1

    if-nez v0, :cond_2

    const-wide v5, 0x7fffffffffffffffL

    .line 86944
    .local v0, "endPosition":J
    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    .line 86945
    const-wide v5, 0x7fffffffffffffffL

    .line 86946
    .end local v0    # "endPosition":J
    .local v9, "endPosition":J
    .local v0, "currentPosition":J
    :cond_0
    const-wide/16 v3, 0x0

    .line 86947
    .end local v0    # "currentPosition":J
    .local v11, "currentPosition":J
    .local v13, "cachedBytes":J
    :goto_1
    cmp-long v0, v11, v5

    if-gez v0, :cond_3

    .line 86948
    sub-long v13, v5, v11

    .line 86949
    .local p0, "maxRemainingLength":J
    move-object v9, p0

    :try_start_0
    move-object/from16 v10, p1

    invoke-virtual/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/ir;->A74(Ljava/lang/String;JJ)J

    move-result-wide v1

    .line 86950
    .local v0, "blockLength":J
    cmp-long v0, v1, v7

    if-lez v0, :cond_1

    goto :goto_2

    .line 86951
    :cond_1
    neg-long v1, v1

    goto :goto_3

    .line 86952
    :goto_2
    add-long/2addr v3, v1

    .line 86953
    :goto_3
    add-long/2addr v11, v1

    .line 86954
    .end local v0    # "blockLength":J
    .end local p0    # "maxRemainingLength":J
    goto :goto_1

    .line 86955
    :cond_2
    add-long v5, v11, p4

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86956
    .end local v9    # "endPosition":J
    .end local v11    # "currentPosition":J
    .end local v13    # "cachedBytes":J
    .end local p2    # null:J
    .end local p3
    .end local p4    # null:J
    .end local p6
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 86957
    .restart local v9    # "endPosition":J
    .restart local v11    # "currentPosition":J
    .restart local v13    # "cachedBytes":J
    .restart local p3
    .restart local p4    # null:J
    .restart local p6
    :cond_3
    monitor-exit p0

    return-wide v3
.end method

.method public final declared-synchronized A74(Ljava/lang/String;JJ)J
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    .end annotation

    monitor-enter p0

    .line 86958
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86959
    const-wide/16 v1, -0x1

    cmp-long v0, p4, v1

    if-nez v0, :cond_1

    .line 86960
    const-wide p4, 0x7fffffffffffffffL

    .line 86961
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    .line 86962
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/facebook/ads/redexgen/X/M4;->A02(JJ)J

    move-result-wide v0

    goto :goto_1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :cond_2
    neg-long v0, p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-wide v0

    .line 86963
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p4    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized A7K(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M8;
    .locals 1

    monitor-enter p0

    .line 86964
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86965
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/is;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86966
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AGw(Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 3

    monitor-enter p0

    .line 86967
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86968
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A04:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/M4;

    .line 86969
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/Lx;->A02:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->A07(J)V

    .line 86970
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/M4;->A02:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0K(Ljava/lang/String;)V

    .line 86971
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86972
    monitor-exit p0

    return-void

    .line 86973
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Lx;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AHk(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    .line 86974
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86975
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/ir;->A0I(Ljava/lang/String;)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Lx;

    .line 86976
    .local v1, "span":Lcom/facebook/ads/redexgen/X/Lx;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ir;->A0A(Lcom/facebook/ads/redexgen/X/Lx;)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86977
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :cond_1
    monitor-exit p0

    return-void

    .line 86978
    .end local p1    # null:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AHl(Lcom/facebook/ads/redexgen/X/Lx;)V
    .locals 1

    monitor-enter p0

    .line 86979
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86980
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ir;->A0A(Lcom/facebook/ads/redexgen/X/Lx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86981
    monitor-exit p0

    return-void

    .line 86982
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/Lx;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AJN(Ljava/lang/String;JJ)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    monitor-enter p0

    .line 86983
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86984
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A08()V

    .line 86985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    move-object v5, p1

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v2

    .line 86986
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    invoke-static {v2}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86987
    move-wide v8, p4

    move-wide v6, p2

    invoke-virtual {v2, v6, v7, v8, v9}, Lcom/facebook/ads/redexgen/X/M4;->A0B(JJ)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86988
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86989
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ir;->A0F(Ljava/io/File;)V

    .line 86990
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A06()V

    .line 86991
    .end local v8
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ir;->A04:Lcom/facebook/ads/redexgen/X/iw;

    move-object v4, p0

    invoke-interface/range {v3 .. v9}, Lcom/facebook/ads/redexgen/X/iw;->AFM(Lcom/facebook/ads/redexgen/X/Ln;Ljava/lang/String;JJ)V

    .line 86992
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ir;->A07:Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ir;->A09:Ljava/util/Random;

    const/16 v0, 0xa

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86993
    .local v2, "cacheSubDir":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 86994
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/ir;->A0F(Ljava/io/File;)V

    .line 86995
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 86996
    .local v6, "lastTouchTimestamp":J
    iget v5, v2, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/iq;->A05(Ljava/io/File;IJJ)Ljava/io/File;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 86997
    .end local v0    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    .end local v2    # "cacheSubDir":Ljava/io/File;
    .end local v6    # "lastTouchTimestamp":J
    .end local v9
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    .end local p2    # null:J
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AJP(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Ll;)Lcom/facebook/ads/redexgen/X/Lx;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    monitor-enter p0

    .line 86998
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 86999
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A08()V

    .line 87000
    :goto_1
    invoke-virtual/range {p0 .. p6}, Lcom/facebook/ads/redexgen/X/ir;->AJQ(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Ll;)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v0

    .line 87001
    .local v0, "span":Lcom/facebook/ads/redexgen/X/Lx;
    if-eqz v0, :cond_1

    goto :goto_2

    .line 87002
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87003
    :goto_2
    monitor-exit p0

    return-object v0

    .line 87004
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p4    # null:J
    .end local p6    # null:Lcom/facebook/ads/redexgen/X/Ll;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized AJQ(Ljava/lang/String;JJLcom/facebook/ads/redexgen/X/Ll;)Lcom/facebook/ads/redexgen/X/iq;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/Lk;
        }
    .end annotation

    monitor-enter p0

    .line 87005
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A03:Z

    const/4 v4, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 87006
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ir;->A08()V

    .line 87007
    invoke-direct/range {p0 .. p5}, Lcom/facebook/ads/redexgen/X/ir;->A03(Ljava/lang/String;JJ)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v3

    .line 87008
    .local v0, "span":Lcom/facebook/ads/redexgen/X/iq;
    iget-boolean v0, v3, Lcom/facebook/ads/redexgen/X/Lx;->A05:Z

    if-eqz v0, :cond_1

    .line 87009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    .line 87010
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v2

    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Lx;->A00:J

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/facebook/ads/redexgen/X/M4;->A05(Lcom/facebook/ads/redexgen/X/iq;JZ)Lcom/facebook/ads/redexgen/X/iq;

    move-result-object v0

    .line 87011
    .local v1, "newCacheSpan":Lcom/facebook/ads/redexgen/X/iq;
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/ir;->A0E(Lcom/facebook/ads/redexgen/X/iq;Lcom/facebook/ads/redexgen/X/Lx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87012
    monitor-exit p0

    return-object v0

    .line 87013
    .end local v1    # "newCacheSpan":Lcom/facebook/ads/redexgen/X/iq;
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/ir;
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ir;->A06:Lcom/facebook/ads/redexgen/X/M6;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v2

    .line 87014
    .local v1, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    iget-wide v0, v3, Lcom/facebook/ads/redexgen/X/Lx;->A01:J

    invoke-virtual {v2, p2, p3, v0, v1}, Lcom/facebook/ads/redexgen/X/M4;->A0C(JJ)Z

    move-result v0

    if-eqz v0, :cond_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87015
    monitor-exit p0

    return-object v3

    .line 87016
    :cond_2
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 87017
    .end local v0    # "span":Lcom/facebook/ads/redexgen/X/iq;
    .end local v1    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    .end local p1    # null:Ljava/lang/String;
    .end local p2    # null:J
    .end local p4    # null:J
    .end local p6    # null:Lcom/facebook/ads/redexgen/X/Ll;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
