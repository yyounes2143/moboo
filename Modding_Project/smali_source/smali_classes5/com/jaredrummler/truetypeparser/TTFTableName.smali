.class public final Lcom/jaredrummler/truetypeparser/TTFTableName;
.super Ljava/lang/Object;
.source "Proguard"


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 2
    .line 3
    const-string v1, "tableDirectory"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 9
    .line 10
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 11
    .line 12
    const-string v1, "name"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 18
    .line 19
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 20
    .line 21
    const-string v1, "OS/2"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/jaredrummler/truetypeparser/TTFTableName;
    .locals 1

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 4
    .line 5
    invoke-direct {v0, p0}, Lcom/jaredrummler/truetypeparser/TTFTableName;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 10
    .line 11
    const-string v0, "A TrueType font table name must not be null"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p0
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
