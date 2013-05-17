.class public Lmiui/provider/Notes;
.super Ljava/lang/Object;
.source "Notes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/provider/Notes$Utils;,
        Lmiui/provider/Notes$CallNote;,
        Lmiui/provider/Notes$TextNote;,
        Lmiui/provider/Notes$AccountColumns;,
        Lmiui/provider/Notes$DataColumns;,
        Lmiui/provider/Notes$NoteColumns;,
        Lmiui/provider/Notes$DataConstants;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "notes"

.field public static final CONTENT_ACCOUNT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_DATA_URI:Landroid/net/Uri; = null

.field public static final CONTENT_MEDIA_URI:Landroid/net/Uri; = null

.field public static final CONTENT_NOTE_ATOMIC_URI:Landroid/net/Uri; = null

.field public static final CONTENT_NOTE_URI:Landroid/net/Uri; = null

.field public static final ID_CALL_RECORD_FOLDER:I = -0x2

.field public static final ID_ROOT_FOLDER:I = 0x0

.field public static final ID_TEMPARAY_FOLDER:I = -0x1

.field public static final ID_TRASH_FOLER:I = -0x3

.field public static final INTENT_ACTION_REFRESH_ALARM:Ljava/lang/String; = "com.miui.notes.action.REFRESH_ALARM"

.field public static final INTENT_ACTION_REFRESH_WIDGET:Ljava/lang/String; = "com.miui.notes.action.REFRESH_WIDGET"

.field public static final INTENT_EXTRA_ALERT_DATE:Ljava/lang/String; = "com.miui.notes.alert_date"

.field public static final INTENT_EXTRA_BACKGROUND_ID:Ljava/lang/String; = "com.miui.notes.background_color_id"

.field public static final INTENT_EXTRA_CALL_DATE:Ljava/lang/String; = "com.miui.notes.call_date"

.field public static final INTENT_EXTRA_FOLDER_ID:Ljava/lang/String; = "com.miui.notes.folder_id"

.field public static final INTENT_EXTRA_SNIPPET:Ljava/lang/String; = "com.miui.notes.snippet"

.field public static final INTENT_EXTRA_WIDGET_ID:Ljava/lang/String; = "com.miui.notes.widget_id"

.field public static final INTENT_EXTRA_WIDGET_TYPE:Ljava/lang/String; = "com.miui.notes.widget_type"

.field public static final IN_VALID_FOLDER_SELECTION:Ljava/lang/String; = "(parent_id>=0 OR parent_id=-2)"

.field public static final TAG:Ljava/lang/String; = "Notes"

.field public static final TYPE_FOLDER:I = 0x1

.field public static final TYPE_NOTE:I = 0x0

.field public static final TYPE_SYSTEM:I = 0x2

.field public static final TYPE_WIDGET_2X:I = 0x0

.field public static final TYPE_WIDGET_4X:I = 0x1

.field public static final TYPE_WIDGET_INVALIDE:I = -0x1

.field public static final VALID_FOLDER_SELECTION:Ljava/lang/String; = "((type=1 AND parent_id=0) OR _id=-2)"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-string v0, "content://notes/note"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    .line 79
    const-string v0, "content://notes/note/atomic"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes;->CONTENT_NOTE_ATOMIC_URI:Landroid/net/Uri;

    .line 84
    const-string v0, "content://notes/data"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes;->CONTENT_DATA_URI:Landroid/net/Uri;

    .line 89
    const-string v0, "content://notes/data/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes;->CONTENT_MEDIA_URI:Landroid/net/Uri;

    .line 94
    const-string v0, "content://notes/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/Notes;->CONTENT_ACCOUNT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 372
    return-void
.end method
