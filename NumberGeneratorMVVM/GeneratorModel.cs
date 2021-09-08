using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Text;
using System.Windows;

namespace NumberGeneratorMVVM
{

    public class GeneratorModel: INotifyPropertyChanged
    {
        private readonly ObservableCollection<ListItem> _values = new ObservableCollection<ListItem>();
        public readonly ReadOnlyObservableCollection<ListItem> UsingValues;

        public GeneratorModel()
        {
            UsingValues = new ReadOnlyObservableCollection<ListItem>(_values); 
        }

        public event PropertyChangedEventHandler PropertyChanged;

        // добавляем сгенерированное число в коллекцию
        public void AddValue(object obj)
        { 
            var value = new ListItem();
            value.NumValue = FourSignNumberGenerator();
            value.IsSimple = CheckForSimpleNumber(value.NumValue);

            Application.Current.Dispatcher.Invoke(() =>
            {
                _values.Add(value);
            });

            OnPropertyChanged("UsingValues");
            
        }

        // генерируем случ. 4-хзнач. положит. цел. число
        public int FourSignNumberGenerator() 
        {
            {
                var rnd = new Random();
                var result = rnd.Next(1000, 10000);

                return result;
            }
        }

        // если число простое, то возвращаем true
        public bool CheckForSimpleNumber(int number) 
        {
            bool result = true;
            for (int i = 2; i < number / 2; i++)
            {
                if (number % i == 0)
                {
                    result = false;
                    break;
                }
            }
            return result;
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

    }
    public class ListItem // элементы такого типа составляют коллекцию
    {
        public int NumValue { get; set; } // числовое значение элемента 
        public bool IsSimple { get; set; } // свойство простоты числа, если простое, то true
    }


}
