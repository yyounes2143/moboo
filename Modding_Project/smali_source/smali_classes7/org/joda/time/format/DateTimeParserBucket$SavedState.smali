.class Lorg/joda/time/format/DateTimeParserBucket$SavedState;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/joda/time/format/DateTimeParserBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavedState"
.end annotation


# instance fields
.field public final synthetic Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParserBucket;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;


# direct methods
.method public constructor <init>(Lorg/joda/time/format/DateTimeParserBucket;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParserBucket;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)Lorg/joda/time/DateTimeZone;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 11
    .line 12
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 23
    .line 24
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iput p1, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/format/DateTimeParserBucket;

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lorg/joda/time/DateTimeZone;

    .line 8
    .line 9
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Lorg/joda/time/DateTimeZone;)Lorg/joda/time/DateTimeZone;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/Integer;

    .line 13
    .line 14
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 18
    .line 19
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;[Lorg/joda/time/format/DateTimeParserBucket$SavedField;)[Lorg/joda/time/format/DateTimeParserBucket$SavedField;

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    invoke-static {p1}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-ge v0, v1, :cond_1

    .line 30
    .line 31
    invoke-static {p1, v2}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;Z)Z

    .line 32
    .line 33
    .line 34
    :cond_1
    iget v0, p0, Lorg/joda/time/format/DateTimeParserBucket$SavedState;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 35
    .line 36
    invoke-static {p1, v0}, Lorg/joda/time/format/DateTimeParserBucket;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(Lorg/joda/time/format/DateTimeParserBucket;I)I

    .line 37
    .line 38
    .line 39
    return v2
.end method
