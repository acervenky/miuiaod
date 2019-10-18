.class public Lcom/miui/aod/util/EmojiInputFilter;
.super Ljava/lang/Object;
.source "EmojiInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Character;->charCount(I)I

    move-result p5

    invoke-static {p4}, Lcom/miui/aod/Utils;->isEmojiCharacter(I)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x0

    :goto_1
    if-ge p4, p5, :cond_0

    add-int p6, p2, p4

    invoke-interface {p1, p6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p6

    invoke-virtual {p0, p6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr p2, p5

    goto :goto_0

    :cond_1
    return-object p0
.end method
