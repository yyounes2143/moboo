.class public final Lcom/facebook/ads/redexgen/X/M6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
    type = {
        "NON_FINAL"
    }
    value = "D54147219: For usage in Hero Simple Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/iu;,
        Lcom/facebook/ads/redexgen/X/it;,
        Lcom/facebook/ads/redexgen/X/M5;
    }
.end annotation


# static fields
.field public static A06:[B

.field public static A07:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/M5;

.field public A01:Lcom/facebook/ads/redexgen/X/M5;

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Landroid/util/SparseBooleanArray;

.field public final A04:Landroid/util/SparseBooleanArray;

.field public final A05:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/M4;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1343
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1eaMPdLcC8DbZCkn0iIyVPFCZSdDAanS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Exaxr4PlErBkBzdiwoicKn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "2BC"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "jQaYCx7PV0mXn8Zj7H8rC7xxlui6spsC"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wp2nCKHDQcjkZqDMhhhKbFGW7G"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "lMJ"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SjVm96go47njO9ADG8uLls"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "QdN"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/M6;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4m;Ljava/io/File;[BZZ)V
    .locals 4

    .line 51714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51715
    if-nez p1, :cond_0

    if-eqz p2, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    .line 51716
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    .line 51717
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    .line 51718
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/util/SparseBooleanArray;

    .line 51719
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/util/SparseBooleanArray;

    .line 51720
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    new-instance v3, Lcom/facebook/ads/redexgen/X/iu;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/iu;-><init>(Lcom/facebook/ads/redexgen/X/4m;)V

    .line 51721
    .local v1, "databaseStorage":Lcom/facebook/ads/redexgen/X/M5;
    :goto_1
    if-eqz p2, :cond_1

    .line 51722
    const/16 v2, 0x2a

    const/16 v1, 0x18

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A04(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Lcom/facebook/ads/redexgen/X/it;

    invoke-direct {v1, v0, p3, p4}, Lcom/facebook/ads/redexgen/X/it;-><init>(Ljava/io/File;[BZ)V

    .line 51723
    .local v0, "legacyStorage":Lcom/facebook/ads/redexgen/X/M5;
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_3

    if-eqz p5, :cond_3

    .line 51724
    :cond_2
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/4a;->A0f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/M5;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    .line 51725
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    .line 51726
    :goto_2
    return-void

    .line 51727
    :cond_3
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    .line 51728
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    goto :goto_2

    .line 51729
    :cond_4
    move-object v3, v1

    goto :goto_1

    .line 51730
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A00(Landroid/util/SparseArray;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 51731
    .local p0, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 51732
    .local v0, "size":I
    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 51733
    .local v1, "id":I
    :goto_0
    if-gez v1, :cond_0

    .line 51734
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_0

    .line 51735
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    if-eq v1, v0, :cond_1

    .line 51736
    :cond_0
    return v1

    .line 51737
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 51738
    :cond_2
    add-int/lit8 v0, v2, -0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    goto :goto_0
.end method

.method private A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;
    .locals 4

    .line 51739
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A00(Landroid/util/SparseArray;)I

    move-result v3

    .line 51740
    .local v0, "id":I
    new-instance v2, Lcom/facebook/ads/redexgen/X/M4;

    invoke-direct {v2, v3, p1}, Lcom/facebook/ads/redexgen/X/M4;-><init>(ILjava/lang/String;)V

    .line 51741
    .local v1, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51743
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 51744
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0, v2}, Lcom/facebook/ads/redexgen/X/M5;->AFa(Lcom/facebook/ads/redexgen/X/M4;)V

    .line 51745
    return-object v2
.end method

.method public static A02(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/is;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51746
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .line 51747
    .local v0, "size":I
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 51748
    .local v1, "metadata":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[B>;"
    const/4 v7, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v7, v9, :cond_2

    .line 51749
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 51750
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 51751
    .local v4, "valueSize":I
    if-ltz v5, :cond_1

    .line 51752
    const/4 v4, 0x0

    .line 51753
    .local v5, "bytesRead":I
    const/high16 v3, 0xa00000

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 51754
    .local v7, "nextBytesToRead":I
    sget-object v1, Lcom/facebook/ads/redexgen/X/4a;->A07:[B

    .line 51755
    .local v8, "value":[B
    :goto_1
    if-eq v4, v5, :cond_0

    .line 51756
    add-int v0, v4, v2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 51757
    invoke-virtual {p0, v1, v4, v2}, Ljava/io/DataInputStream;->readFully([BII)V

    .line 51758
    add-int/2addr v4, v2

    .line 51759
    sub-int v0, v5, v4

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_1

    .line 51760
    :cond_0
    invoke-virtual {v8, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51761
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "valueSize":I
    .end local v5    # "bytesRead":I
    .end local v7    # "nextBytesToRead":I
    .end local v8    # "value":[B
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 51762
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "valueSize":I
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x16

    const/16 v1, 0x14

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51763
    .end local v2    # "i":I
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "valueSize":I
    :cond_2
    new-instance v0, Lcom/facebook/ads/redexgen/X/is;

    invoke-direct {v0, v8}, Lcom/facebook/ads/redexgen/X/is;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synthetic A03(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/is;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51764
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/M6;->A02(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/is;

    move-result-object p0

    return-object p0
.end method

.method public static A04(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/M6;->A06:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x33

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A05()Ljavax/crypto/Cipher;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 51765
    sget v5, Lcom/facebook/ads/redexgen/X/4a;->A02:I

    const/16 v4, 0x12

    const/4 v2, 0x0

    const/16 v1, 0x14

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A04(III)Ljava/lang/String;

    move-result-object v3

    if-ne v5, v4, :cond_0

    .line 51766
    :try_start_0
    const/16 v2, 0x14

    const/4 v1, 0x2

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51767
    :catchall_0
    :cond_0
    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    const-string v1, "EBBbD5OLh9DYDBrMigQNtJ"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "xQSZ94mu2vygjBv0Ab9r12"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3
.end method

.method public static synthetic A06()Ljavax/crypto/Cipher;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 51768
    invoke-static {}, Lcom/facebook/ads/redexgen/X/M6;->A05()Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x42

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/M6;->A06:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x10t
        0x6t
        0x7at
        0x16t
        0x17t
        0x16t
        0x7at
        0x5t
        0x1et
        0x16t
        0x6t
        0x60t
        0x5t
        0x14t
        0x11t
        0x11t
        0x1ct
        0x1bt
        0x12t
        0x20t
        0x21t
        0x42t
        0x65t
        0x7dt
        0x6at
        0x67t
        0x62t
        0x6ft
        0x2bt
        0x7dt
        0x6at
        0x67t
        0x7et
        0x6et
        0x2bt
        0x78t
        0x62t
        0x71t
        0x6et
        0x31t
        0x2bt
        0x7ft
        0x7dt
        0x7ft
        0x74t
        0x79t
        0x78t
        0x43t
        0x7ft
        0x73t
        0x72t
        0x68t
        0x79t
        0x72t
        0x68t
        0x43t
        0x75t
        0x72t
        0x78t
        0x79t
        0x64t
        0x32t
        0x79t
        0x64t
        0x75t
    .end array-data
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/is;Ljava/io/DataOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51769
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/is;->A06()Ljava/util/Set;

    move-result-object v1

    .line 51770
    .local v0, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;[B>;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 51771
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 51772
    .local p0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 51773
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 51774
    .local p1, "value":[B
    array-length v0, v1

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 51775
    invoke-virtual {p1, v1}, Ljava/io/DataOutputStream;->write([B)V

    .line 51776
    .end local p0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;[B>;"
    .end local p1    # "value":[B
    goto :goto_0

    .line 51777
    :cond_0
    return-void
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/is;Ljava/io/DataOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51778
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A08(Lcom/facebook/ads/redexgen/X/is;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method public static A0A(Ljava/lang/String;)Z
    .locals 3

    .line 51779
    const/16 v2, 0x2a

    const/16 v1, 0x18

    const/16 v0, 0x2f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A04(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final A0B(Ljava/lang/String;)I
    .locals 1

    .line 51780
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    iget v0, v0, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    return v0
.end method

.method public final A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;
    .locals 1

    .line 51781
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/M4;

    return-object v0
.end method

.method public final A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;
    .locals 1

    .line 51782
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/M4;

    .line 51783
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A01(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final A0E(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/is;
    .locals 1

    .line 51784
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0C(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    .line 51785
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/M4;->A03()Lcom/facebook/ads/redexgen/X/is;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/is;->A03:Lcom/facebook/ads/redexgen/X/is;

    goto :goto_0
.end method

.method public final A0F(I)Ljava/lang/String;
    .locals 1

    .line 51786
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0G()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/facebook/ads/redexgen/X/M4;",
            ">;"
        }
    .end annotation

    .line 51787
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 5

    .line 51788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Al;->A07(Ljava/util/Collection;)Lcom/facebook/ads/redexgen/X/Al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Al;->A0N()Lcom/facebook/ads/redexgen/X/pg;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    const-string v1, "jpVmrDDiLa6KSoRZ9DaLqT"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "R0FMfILNqJLoUgBryCIaQS"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 51789
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/M6;->A0K(Ljava/lang/String;)V

    .line 51790
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 51791
    :cond_1
    return-void
.end method

.method public final A0I()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51792
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->AJY(Ljava/util/HashMap;)V

    .line 51793
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    .line 51794
    .local v0, "removedIdCount":I
    const/4 v2, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 51795
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 51796
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 51797
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 51798
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 51799
    return-void
.end method

.method public final A0J(J)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51800
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/M5;->AA7(J)V

    .line 51801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    if-eqz v0, :cond_0

    .line 51802
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/M5;->AA7(J)V

    .line 51803
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/M5;->A6K()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/M5;->A6K()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51804
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->AAj(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    .line 51805
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->AJX(Ljava/util/HashMap;)V

    .line 51806
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    if-eqz v0, :cond_3

    .line 51807
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 51808
    :cond_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/M5;->AAj(Ljava/util/HashMap;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/M6;->A07:[Ljava/lang/String;

    const-string v1, "sHyLaDKMqWdH53QwNCQNuy"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "kZIq1iKkwSA0yGMJ22HAvZ"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-interface {v3}, Lcom/facebook/ads/redexgen/X/M5;->A5h()V

    .line 51809
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A00:Lcom/facebook/ads/redexgen/X/M5;

    .line 51810
    :cond_3
    return-void
.end method

.method public final A0K(Ljava/lang/String;)V
    .locals 4

    .line 51811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/M4;

    .line 51812
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/M4;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/M4;->A0A()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51813
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A05:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51814
    iget v2, v3, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    .line 51815
    .local v1, "id":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    .line 51816
    .local v2, "neverStored":Z
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0, v3, v1}, Lcom/facebook/ads/redexgen/X/M5;->AEv(Lcom/facebook/ads/redexgen/X/M4;Z)V

    .line 51817
    if-eqz v1, :cond_1

    .line 51818
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 51819
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A03:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 51820
    .end local v1    # "id":I
    .end local v2    # "neverStored":Z
    :cond_0
    :goto_0
    return-void

    .line 51821
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A02:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 51822
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/M6;->A04:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0
.end method

.method public final A0L(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/M9;)V
    .locals 2

    .line 51823
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/M6;->A0D(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v1

    .line 51824
    .local v0, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    invoke-virtual {v1, p2}, Lcom/facebook/ads/redexgen/X/M4;->A0E(Lcom/facebook/ads/redexgen/X/M9;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51825
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/M6;->A01:Lcom/facebook/ads/redexgen/X/M5;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/M5;->AFa(Lcom/facebook/ads/redexgen/X/M4;)V

    .line 51826
    :cond_0
    return-void
.end method
