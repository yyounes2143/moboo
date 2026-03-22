.class public final Lcom/facebook/ads/redexgen/X/SZ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/SY;
    }
.end annotation


# static fields
.field public static A04:[B

.field public static final A05:Ljava/lang/String;

.field public static final A06:Ljava/util/concurrent/locks/Lock;

.field public static final A07:Ljava/util/concurrent/locks/Lock;

.field public static final A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# instance fields
.field public A00:Landroid/database/sqlite/SQLiteOpenHelper;

.field public final A01:Lcom/facebook/ads/redexgen/X/cu;

.field public final A02:Lcom/facebook/ads/redexgen/X/ct;

.field public final A03:Lcom/facebook/ads/redexgen/X/cs;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1604
    invoke-static {}, Lcom/facebook/ads/redexgen/X/SZ;->A07()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6b

    const/16 v1, 0xe

    const/16 v0, 0x2c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/cs;->A03:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3a

    const/4 v1, 0x2

    const/16 v0, 0x71

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v3, 0x8e

    const/4 v1, 0x6

    const/4 v0, 0x7

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v3, 0x3c

    const/4 v1, 0x1

    const/16 v0, 0x1f

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/cs;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v3, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A04:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A05:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A0A:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A08:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A07:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A06:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A03:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0xb

    const/4 v1, 0x6

    const/16 v0, 0x69

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x11

    const/4 v1, 0x6

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x1e

    const/4 v1, 0x4

    const/16 v0, 0x72

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A09:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/cs;->A03:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x22

    const/16 v1, 0xa

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A08:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v2, 0x7

    const/4 v1, 0x4

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A05:Ljava/lang/String;

    .line 1605
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 1606
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    .line 1607
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A08:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/cu;)V
    .locals 1

    .line 64166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64167
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 64168
    new-instance v0, Lcom/facebook/ads/redexgen/X/cs;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/cs;-><init>(Lcom/facebook/ads/redexgen/X/SZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Lcom/facebook/ads/redexgen/X/cs;

    .line 64169
    new-instance v0, Lcom/facebook/ads/redexgen/X/ct;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/ct;-><init>(Lcom/facebook/ads/redexgen/X/SZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    .line 64170
    return-void
.end method

.method private declared-synchronized A00()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    monitor-enter p0

    .line 64171
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-nez v0, :cond_0

    .line 64172
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/cu;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Sa;

    invoke-direct {v0, v1, p0}, Lcom/facebook/ads/redexgen/X/Sa;-><init>(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/SZ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 64173
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/SZ;
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 64174
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A01()Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    monitor-enter p0

    .line 64175
    const/4 v4, 0x0

    .line 64176
    .local v0, "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    const/4 v2, 0x0

    .local v1, "attempts":I
    :goto_0
    const/16 v0, 0xa

    if-ge v2, v0, :cond_0

    .line 64177
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SZ;->A00()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    goto :goto_1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64178
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/SZ;
    :catch_0
    move-exception v4

    .line 64179
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    const-wide/16 v0, 0x64

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64180
    :catch_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 64181
    :goto_1
    monitor-exit p0

    return-object v0

    .line 64182
    .end local v1    # "attempts":I
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/cu;

    .line 64183
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/SQ;->A08()Lcom/facebook/ads/redexgen/X/Su;

    move-result-object v3

    const/16 v2, 0x80

    const/16 v1, 0x8

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/facebook/ads/redexgen/X/Sv;->A0v:I

    new-instance v1, Lcom/facebook/ads/redexgen/X/Sw;

    invoke-direct {v1, v4}, Lcom/facebook/ads/redexgen/X/Sw;-><init>(Ljava/lang/Throwable;)V

    .line 64184
    invoke-interface {v3, v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Su;->AAy(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/Sw;)V

    .line 64185
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64186
    .end local v0    # "exceptionThrown":Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/SZ;)Lcom/facebook/ads/redexgen/X/cu;
    .locals 0

    .line 64187
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/cu;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/SZ;)Lcom/facebook/ads/redexgen/X/ct;
    .locals 0

    .line 64188
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/SZ;)Lcom/facebook/ads/redexgen/X/cs;
    .locals 0

    .line 64189
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Lcom/facebook/ads/redexgen/X/cs;

    return-object p0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/SZ;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x11

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A06()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 64190
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x94

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0x52t
        -0x35t
        -0x52t
        0x6dt
        -0x75t
        0x6dt
        -0x74t
        0x55t
        0x76t
        -0x78t
        0x78t
        -0x66t
        -0x40t
        -0x34t
        -0x37t
        -0x39t
        -0x66t
        0x7ft
        -0x57t
        -0x52t
        -0x58t
        -0x53t
        0x7ft
        0x5et
        -0x76t
        -0x79t
        -0x75t
        -0x79t
        -0x6et
        0x5et
        -0x5dt
        -0x2et
        -0x2ft
        -0x5dt
        0x57t
        -0x7at
        -0x77t
        0x7bt
        0x7ct
        -0x77t
        0x57t
        0x79t
        -0x70t
        0x57t
        0x55t
        -0x78t
        0x7at
        -0x77t
        0x55t
        -0x73t
        -0x3ct
        -0x4bt
        -0x4et
        -0x41t
        -0x4et
        -0x73t
        0x6et
        0x74t
        -0x52t
        -0x5et
        0x5et
        0x6et
        -0x65t
        -0x63t
        -0x37t
        -0x19t
        -0xct
        -0xct
        -0xbt
        -0x6t
        -0x5at
        -0x17t
        -0x19t
        -0xet
        -0xet
        -0x5at
        -0x13t
        -0x15t
        -0x6t
        -0x36t
        -0x19t
        -0x6t
        -0x19t
        -0x18t
        -0x19t
        -0x7t
        -0x15t
        -0x5at
        -0x14t
        -0x8t
        -0xbt
        -0xdt
        -0x5at
        -0x6t
        -0x12t
        -0x15t
        -0x5at
        -0x25t
        -0x31t
        -0x5at
        -0x6t
        -0x12t
        -0x8t
        -0x15t
        -0x19t
        -0x16t
        -0x59t
        -0x70t
        -0x7et
        -0x77t
        -0x7et
        -0x80t
        -0x6ft
        0x5dt
        -0x4ft
        -0x54t
        -0x58t
        -0x5et
        -0x55t
        -0x50t
        0x6bt
        -0x40t
        -0x45t
        -0x51t
        -0x54t
        -0x41t
        -0x50t
        -0x75t
        -0x1dt
        -0x20t
        -0xdt
        -0x20t
        -0x1ft
        -0x20t
        -0xet
        -0x1ct
        -0x70t
        -0x5ft
        -0x70t
        -0x67t
        -0x61t
        -0x62t
        -0x74t
        -0x79t
        -0x7dt
        0x7dt
        -0x7at
        -0x75t
    .end array-data
.end method


# virtual methods
.method public final A08(I)I
    .locals 6

    .line 64191
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64192
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SZ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v3, 0x3

    const/4 v2, 0x4

    const/16 v0, 0x3c

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, p1, -0x1

    .line 64193
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 64194
    invoke-virtual {v5, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64195
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64196
    return v1

    .line 64197
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64198
    throw v1
.end method

.method public final A09()Landroid/database/Cursor;
    .locals 2

    .line 64199
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64200
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ct;->A0B()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64201
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64202
    return-object v1

    .line 64203
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64204
    throw v1
.end method

.method public final A0A()Landroid/database/Cursor;
    .locals 2

    .line 64205
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64206
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ct;->A0C()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64207
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64208
    return-object v1

    .line 64209
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64210
    throw v1
.end method

.method public final A0B()Landroid/database/Cursor;
    .locals 2

    .line 64211
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64212
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Lcom/facebook/ads/redexgen/X/cs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/cs;->A0B()Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64213
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64214
    return-object v1

    .line 64215
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64216
    throw v1
.end method

.method public final A0C(I)Landroid/database/Cursor;
    .locals 5

    .line 64217
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64218
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SZ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x17

    const/4 v1, 0x7

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 64219
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v4, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64220
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64221
    return-object v1

    .line 64222
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64223
    throw v1
.end method

.method public final A0D(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    .line 64224
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64225
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ct;->A0D(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64226
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64227
    return-object v1

    .line 64228
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A06:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64229
    throw v1
.end method

.method public final A0E()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 64230
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq v1, v0, :cond_0

    .line 64231
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/SZ;->A01()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0

    .line 64232
    :cond_0
    const/16 v2, 0x40

    const/16 v1, 0x2b

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final A0F(Lcom/facebook/ads/redexgen/X/Sc;Lcom/facebook/ads/redexgen/X/Tg;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/ads/redexgen/X/Sc<",
            "TT;>;",
            "Lcom/facebook/ads/redexgen/X/Tg<",
            "TT;>;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 64233
    .local p1, "query":Lcom/facebook/ads/redexgen/X/Sc;, "Lcom/facebook/ads/internal/database/AdDatabaseQuery<TT;>;"
    .local p2, "callback":Lcom/facebook/ads/redexgen/X/Tg;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<TT;>;"
    sget-object v2, Lcom/facebook/ads/redexgen/X/XU;->A07:Ljava/util/concurrent/Executor;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/cu;

    new-instance v1, Lcom/facebook/ads/redexgen/X/SY;

    invoke-direct {v1, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/SY;-><init>(Lcom/facebook/ads/redexgen/X/cu;Lcom/facebook/ads/redexgen/X/Sc;Lcom/facebook/ads/redexgen/X/Tg;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/XR;->A00(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0G(Ljava/lang/String;ILjava/lang/String;DDLjava/lang/String;Ljava/util/Map;Lcom/facebook/ads/redexgen/X/Tg;)Landroid/os/AsyncTask;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "DD",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Tg<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/AsyncTask;"
        }
    .end annotation

    .line 64234
    .local p9, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p10, "callback":Lcom/facebook/ads/redexgen/X/Tg;, "Lcom/facebook/ads/internal/eventstorage/AdEventStorageCallback<Ljava/lang/String;>;"
    new-instance v1, Lcom/facebook/ads/redexgen/X/6L;

    move-object v2, p0

    move-object/from16 v11, p9

    move-object/from16 v10, p8

    move-wide/from16 v6, p4

    move-object v3, p3

    move v5, p2

    move-wide/from16 v8, p6

    move-object v4, p1

    invoke-direct/range {v1 .. v11}, Lcom/facebook/ads/redexgen/X/6L;-><init>(Lcom/facebook/ads/redexgen/X/SZ;Ljava/lang/String;Ljava/lang/String;IDDLjava/lang/String;Ljava/util/Map;)V

    move-object/from16 v0, p10

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A0F(Lcom/facebook/ads/redexgen/X/Sc;Lcom/facebook/ads/redexgen/X/Tg;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final A0H()V
    .locals 2

    .line 64235
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64236
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A09()Z

    .line 64237
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Lcom/facebook/ads/redexgen/X/cs;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Sd;->A09()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64238
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64239
    return-void

    .line 64240
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64241
    throw v1
.end method

.method public final A0I()V
    .locals 2

    .line 64242
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64243
    :try_start_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Lcom/facebook/ads/redexgen/X/cs;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A01:Lcom/facebook/ads/redexgen/X/cu;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/cs;->A0D(Lcom/facebook/ads/redexgen/X/cu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64244
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64245
    return-void

    .line 64246
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64247
    throw v1
.end method

.method public final declared-synchronized A0J()V
    .locals 2

    monitor-enter p0

    .line 64248
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SZ;->A0M()[Lcom/facebook/ads/redexgen/X/Sd;

    move-result-object v0

    array-length v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .end local p1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64249
    .end local p2
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_1

    .line 64250
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 64251
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A00:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64252
    :cond_1
    monitor-exit p0

    return-void

    .line 64253
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final A0K(Ljava/lang/String;)Z
    .locals 2

    .line 64254
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64255
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/ct;->A0F(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64256
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64257
    return v1

    .line 64258
    :catchall_0
    move-exception v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64259
    throw v1
.end method

.method public final A0L(Ljava/lang/String;)Z
    .locals 5

    .line 64260
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 64261
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 64262
    .local v0, "queryBuilder":Ljava/lang/StringBuilder;
    const/16 v2, 0x79

    const/4 v1, 0x7

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64263
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x88

    const/4 v1, 0x6

    const/16 v0, 0x1a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64264
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x2c

    const/4 v1, 0x5

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64265
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    .line 64266
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3d

    const/4 v1, 0x1

    const/16 v0, 0x20

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64267
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A02:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    .line 64268
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x38

    const/4 v1, 0x2

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64269
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x31

    const/4 v1, 0x7

    const/16 v0, 0x5c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64270
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ct;->A04:Lcom/facebook/ads/redexgen/X/SX;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/SX;->A01:Ljava/lang/String;

    .line 64271
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v2, 0x3e

    const/4 v1, 0x2

    const/16 v0, 0x4d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/SZ;->A05(III)Ljava/lang/String;

    move-result-object v0

    .line 64272
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64273
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/SZ;->A0E()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64274
    const/4 v1, 0x1

    .line 64275
    .local v0, "updateResult":Z
    goto :goto_0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64276
    .end local v0    # "updateResult":Z
    .local v0, "ignored":Landroid/database/sqlite/SQLiteException;
    :catch_0
    const/4 v1, 0x0

    .line 64277
    .local v0, "updateResult":Z
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/SZ;->A07:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 64278
    return v1
.end method

.method public final A0M()[Lcom/facebook/ads/redexgen/X/Sd;
    .locals 3

    .line 64279
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/Sd;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A03:Lcom/facebook/ads/redexgen/X/cs;

    aput-object v0, v2, v1

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/SZ;->A02:Lcom/facebook/ads/redexgen/X/ct;

    aput-object v0, v2, v1

    return-object v2
.end method
