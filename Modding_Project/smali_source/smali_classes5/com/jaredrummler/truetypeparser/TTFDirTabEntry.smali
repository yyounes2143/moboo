.class public Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 4
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 5
    iput-wide p1, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 6
    iput-wide p3, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    aput-byte v1, v0, v2

    .line 9
    .line 10
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    aput-byte v2, v0, v1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 20
    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    aput-byte v2, v0, v1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 29
    .line 30
    const/4 v1, 0x3

    .line 31
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()B

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    aput-byte v2, v0, v1

    .line 36
    .line 37
    const-wide/16 v0, 0x4

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    iput-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    iput-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 53
    .line 54
    new-instance p1, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 57
    .line 58
    const-string v1, "ISO-8859-1"

    .line 59
    .line 60
    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    return-object p1
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    return-wide v0
.end method
