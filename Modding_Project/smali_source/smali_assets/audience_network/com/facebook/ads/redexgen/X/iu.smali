.class public final Lcom/facebook/ads/redexgen/X/iu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/M5;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/M6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DatabaseStorage"
.end annotation


# static fields
.field public static A04:[B

.field public static final A05:[Ljava/lang/String;


# instance fields
.field public A00:Ljava/lang/String;

.field public A01:Ljava/lang/String;

.field public final A02:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/M4;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/4m;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 3002
    invoke-static {}, Lcom/facebook/ads/redexgen/X/iu;->A03()V

    const/16 v2, 0x88

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v4

    const/16 v2, 0x8b

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x80

    const/4 v1, 0x2

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v4, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iu;->A05:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4m;)V
    .locals 1

    .line 87214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87215
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    .line 87216
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    .line 87217
    return-void
.end method

.method private A00()Landroid/database/Cursor;
    .locals 9

    .line 87218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    .line 87219
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4m;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Ljava/lang/String;

    .line 87220
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/facebook/ads/redexgen/X/iu;->A05:[Ljava/lang/String;

    .line 87221
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87222
    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/iu;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 87223
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6d

    const/16 v1, 0x13

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x93

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/iu;->A04:[B

    return-void

    :array_0
    .array-data 1
        0x37t
        0x2bt
        0x6at
        0x67t
        0x23t
        0x4at
        0x4dt
        0x57t
        0x46t
        0x44t
        0x46t
        0x51t
        0x23t
        0x53t
        0x51t
        0x4at
        0x4et
        0x42t
        0x51t
        0x5at
        0x23t
        0x48t
        0x46t
        0x5at
        0x23t
        0x4dt
        0x4ct
        0x57t
        0x23t
        0x4dt
        0x56t
        0x4ft
        0x4ft
        0x2ft
        0x68t
        0x66t
        0x7at
        0x23t
        0x57t
        0x46t
        0x5bt
        0x57t
        0x23t
        0x4dt
        0x4ct
        0x57t
        0x23t
        0x4dt
        0x56t
        0x4ft
        0x4ft
        0x2ft
        0x6et
        0x66t
        0x77t
        0x62t
        0x67t
        0x62t
        0x77t
        0x62t
        0x23t
        0x41t
        0x4ft
        0x4ct
        0x41t
        0x23t
        0x4dt
        0x4ct
        0x57t
        0x23t
        0x4dt
        0x56t
        0x4ft
        0x4ft
        0x2at
        0x2et
        0x3ft
        0x28t
        0x2ct
        0x39t
        0x28t
        0x4dt
        0x39t
        0x2ct
        0x2ft
        0x21t
        0x28t
        0x4dt
        0x6t
        0x10t
        0xdt
        0x12t
        0x62t
        0x16t
        0x3t
        0x0t
        0xet
        0x7t
        0x62t
        0xbt
        0x4t
        0x62t
        0x7t
        0x1at
        0xbt
        0x11t
        0x16t
        0x11t
        0x62t
        0x29t
        0x14t
        0x3t
        0x3ct
        0x0t
        0xdt
        0x15t
        0x9t
        0x1et
        0x2ft
        0xdt
        0xft
        0x4t
        0x9t
        0x25t
        0x2t
        0x8t
        0x9t
        0x14t
        0x58t
        0x55t
        0x12t
        0x1ft
        0x5bt
        0x46t
        0x5bt
        0x44t
        0x4ft
        0x41t
        0x5dt
        0x6dt
        0x65t
        0x74t
        0x61t
        0x64t
        0x61t
        0x74t
        0x61t
    .end array-data
.end method

.method private A04(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/4l;
        }
    .end annotation

    .line 87224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Ljava/lang/String;

    .line 87225
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87226
    const/4 v0, 0x1

    invoke-static {p1, v0, v1, v0}, Lcom/facebook/ads/redexgen/X/4o;->A04(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;I)V

    .line 87227
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A07(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 87228
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x4b

    const/16 v1, 0xd

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x1

    const/16 v1, 0x4a

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87229
    return-void
.end method

.method private A05(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5

    .line 87230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Ljava/lang/String;

    .line 87231
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 87232
    const/16 v2, 0x82

    const/4 v1, 0x6

    const/16 v0, 0x7a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 87233
    return-void
.end method

.method private A06(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/ads/redexgen/X/M4;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87234
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 87235
    .local v0, "outputStream":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/M4;->A03()Lcom/facebook/ads/redexgen/X/is;

    move-result-object v1

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/M6;->A09(Lcom/facebook/ads/redexgen/X/is;Ljava/io/DataOutputStream;)V

    .line 87236
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 87237
    .local v1, "data":[B
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 87238
    .local v2, "values":Landroid/content/ContentValues;
    iget v0, p2, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v2, 0x80

    const/4 v1, 0x2

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87239
    const/16 v2, 0x88

    const/4 v1, 0x3

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p2, Lcom/facebook/ads/redexgen/X/M4;->A02:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87240
    const/16 v2, 0x8b

    const/16 v1, 0x8

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 87241
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 87242
    return-void
.end method

.method public static A07(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 4

    .line 87243
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x58

    const/16 v1, 0x15

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 87244
    return-void
.end method

.method public static A08(Lcom/facebook/ads/redexgen/X/4m;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/4l;
        }
    .end annotation

    .line 87245
    :try_start_0
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/iu;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87246
    .local v0, "tableName":Ljava/lang/String;
    invoke-interface {p0}, Lcom/facebook/ads/redexgen/X/4m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 87247
    .local v1, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 87248
    const/4 v0, 0x1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v1, v0, p1}, Lcom/facebook/ads/redexgen/X/4o;->A03(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)V

    .line 87249
    invoke-static {v1, v2}, Lcom/facebook/ads/redexgen/X/iu;->A07(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 87250
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87251
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87252
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 87253
    .restart local v0    # "tableName":Ljava/lang/String;
    .restart local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87254
    .end local p0    # null:Lcom/facebook/ads/redexgen/X/4m;
    .end local p1    # null:Ljava/lang/String;
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87255
    .end local v0    # "tableName":Ljava/lang/String;
    .end local v1    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0    # null:Lcom/facebook/ads/redexgen/X/4m;
    .restart local p1    # null:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 87256
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method


# virtual methods
.method public final A5h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/4l;
        }
    .end annotation

    .line 87257
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/iu;->A08(Lcom/facebook/ads/redexgen/X/4m;Ljava/lang/String;)V

    .line 87258
    return-void
.end method

.method public final A6K()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/4l;
        }
    .end annotation

    .line 87259
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    .line 87260
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4m;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Ljava/lang/String;

    .line 87261
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87262
    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/4o;->A00(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87263
    :catch_0
    move-exception v1

    .line 87264
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final AA7(J)V
    .locals 1

    .line 87265
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Ljava/lang/String;

    .line 87266
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/iu;->A02(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A01:Ljava/lang/String;

    .line 87267
    return-void
.end method

.method public final AAj(Ljava/util/HashMap;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/M4;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87268
    .local p6, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    .local p7, "idToKey":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A08(Z)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 87269
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    .line 87270
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4m;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A00:Ljava/lang/String;

    .line 87271
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 87272
    invoke-static {v1, v5, v0}, Lcom/facebook/ads/redexgen/X/4o;->A00(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;)I

    move-result v0

    .line 87273
    .local v0, "version":I
    if-eq v0, v5, :cond_1

    .line 87274
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 87275
    .local v3, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87276
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/iu;->A04(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87277
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    goto :goto_2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87278
    :catchall_0
    :try_start_2
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87279
    .end local p6
    .end local p7
    throw v0

    .line 87280
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87281
    .end local v3    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p6
    .restart local p7
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/iu;->A00()Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87282
    .local v3, "cursor":Landroid/database/Cursor;
    :goto_3
    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87283
    invoke-interface {v4, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 87284
    .local v4, "id":I
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3M;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 87285
    .local v5, "key":Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 87286
    .local v6, "metadataBytes":[B
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 87287
    .local v7, "inputStream":Ljava/io/ByteArrayInputStream;
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 87288
    .local p0, "input":Ljava/io/DataInputStream;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/M6;->A03(Ljava/io/DataInputStream;)Lcom/facebook/ads/redexgen/X/is;

    move-result-object v0

    .line 87289
    .local p1, "metadata":Lcom/facebook/ads/redexgen/X/is;
    new-instance v2, Lcom/facebook/ads/redexgen/X/M4;

    invoke-direct {v2, v7, v3, v0}, Lcom/facebook/ads/redexgen/X/M4;-><init>(ILjava/lang/String;Lcom/facebook/ads/redexgen/X/is;)V

    .line 87290
    .local p2, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/M4;->A02:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87291
    iget v1, v2, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/M4;->A02:Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 87292
    :cond_2
    if-eqz v4, :cond_3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 87293
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    :cond_3
    return-void
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 87294
    .restart local v0    # "version":I
    .restart local v3    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v1

    if-eqz v4, :cond_4

    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p6
    .end local p7
    :cond_4
    :goto_4
    throw v1
    :try_end_6
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 87295
    .end local v0    # "version":I
    .end local v3    # "cursor":Landroid/database/Cursor;
    .restart local p6
    .restart local p7
    :catch_0
    move-exception v1

    .line 87296
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 87297
    invoke-virtual {p2}, Landroid/util/SparseArray;->clear()V

    .line 87298
    new-instance v0, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final AEv(Lcom/facebook/ads/redexgen/X/M4;Z)V
    .locals 3

    .line 87299
    if-eqz p2, :cond_0

    .line 87300
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->delete(I)V

    .line 87301
    :goto_0
    return-void

    .line 87302
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    iget v1, p1, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public final AFa(Lcom/facebook/ads/redexgen/X/M4;)V
    .locals 2

    .line 87303
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/M4;->A01:I

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87304
    return-void
.end method

.method public final AJX(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/M4;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87305
    .local p1, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 87306
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87307
    :try_start_1
    invoke-direct {p0, v2}, Lcom/facebook/ads/redexgen/X/iu;->A04(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 87308
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/M4;

    .line 87309
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/iu;->A06(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/ads/redexgen/X/M4;)V

    goto :goto_0

    .line 87310
    :cond_0
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 87311
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87312
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87313
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 87314
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87315
    .end local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87316
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p1    # "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    :catch_0
    move-exception v1

    .line 87317
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method

.method public final AJY(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/facebook/ads/redexgen/X/M4;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 87318
    .local p2, "content":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/facebook/ads/google/android/exoplayer2/upstream/cache/CachedContent;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 87319
    return-void

    .line 87320
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A03:Lcom/facebook/ads/redexgen/X/4m;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/4m;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 87321
    .local v0, "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransactionNonExclusive()V

    .line 87322
    const/4 v1, 0x0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 87323
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/M4;

    .line 87324
    .local v2, "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    if-nez v0, :cond_1

    .line 87325
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/iu;->A05(Landroid/database/sqlite/SQLiteDatabase;I)V

    goto :goto_1

    .line 87326
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/facebook/ads/redexgen/X/iu;->A06(Landroid/database/sqlite/SQLiteDatabase;Lcom/facebook/ads/redexgen/X/M4;)V

    .line 87327
    .end local v2    # "cachedContent":Lcom/facebook/ads/redexgen/X/M4;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87328
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 87329
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/iu;->A02:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87330
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87331
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    return-void

    .line 87332
    .restart local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87333
    .end local p2
    throw v0
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0

    .line 87334
    .end local v0    # "writableDatabase":Landroid/database/sqlite/SQLiteDatabase;
    .restart local p2
    :catch_0
    move-exception v1

    .line 87335
    .local v0, "e":Landroid/database/SQLException;
    new-instance v0, Lcom/facebook/ads/redexgen/X/4l;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/4l;-><init>(Landroid/database/SQLException;)V

    throw v0
.end method
