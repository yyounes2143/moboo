.class Lcom/iab/omid/library/unity3d/c;
.super Ljava/lang/Object;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "<(head)( [^>]*)?>"

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 9
    .line 10
    const-string v0, "<(head)( [^>]*)?/>"

    .line 11
    .line 12
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 17
    .line 18
    const-string v0, "<(body)( [^>]*?)?>"

    .line 19
    .line 20
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 25
    .line 26
    const-string v0, "<(body)( [^>]*?)?/>"

    .line 27
    .line 28
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 33
    .line 34
    const-string v0, "<(html)( [^>]*?)?>"

    .line 35
    .line 36
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    const-string v0, "<(html)( [^>]*?)?/>"

    .line 43
    .line 44
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 49
    .line 50
    const-string v0, "<!DOCTYPE [^>]*>"

    .line 51
    .line 52
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sput-object v0, Lcom/iab/omid/library/unity3d/c;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    return-void
.end method
