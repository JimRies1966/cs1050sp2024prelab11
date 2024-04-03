#ifndef _MOVIES_H	// This is a "guard" - Don't worry about it
#define _MOVIES_H

// Types
typedef struct _Movie
{
	char title[256];
	long gross;
	int year;
} Movie;

typedef enum _Field {TITLE, GROSS, YEAR} Field;

// Prototypes
void PrintMovies(Movie movies[], int count);
void SortMovies(Movie movies[], int count, Field field);

#endif
